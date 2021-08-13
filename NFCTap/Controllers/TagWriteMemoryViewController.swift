//
//  TagWriteMemoryViewController.swift
//  ST25NFCApp
//
//  Created by STMicroelectronics on 9/10/19.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit
import CoreNFC

class TagWriteMemoryViewController: ST25UIViewController,NFCTagReaderSessionDelegate,UIPickerViewDataSource, UIPickerViewDelegate {

    
    // Reference the NFC session
    private var tagSession: NFCTagReaderSession!
    private let coreNFCQueue = DispatchQueue(label: "coreNFCQueue")

    private var mBlockAddress:UInt16!
    private var mBlockData:Data!

    //
    private var mUnitsList = [
    "writeSingleBlock ",
    "writeMultipleBlocks",
    "extendedWriteSingleBlocks"
    ]
    
    private var mIndexUnitsList:Int!

    
    
    @IBOutlet weak var blockAddress: UITextField!
    @IBOutlet weak var blockData: UITextField!
    @IBOutlet weak var memoryTextView: UITextView!
    @IBOutlet weak var writingModePickerView: UIPickerView!
    
    @IBAction func handleStart(_ sender: Any) {
        
        if (blockAddress.text!.isEmpty || blockData.text!.isEmpty){
            displayAlert(title: "Bad Parameters", message: "Block Address or Block Data empty")
            return
        }
        
        if ((blockData.text!.count % 4) != 0) {
            displayAlert(title: "Bad Parameters", message: "Number of Data to write must be a multiple of 4")
            return
        }

        
        self.mBlockAddress = UInt16(self.blockAddress.text!)!
        var bufferData:NSData!
        let bufferIOSByteArray = ComStSt25sdkHelper.convertHexStringToByteArray(with: self.blockData.text)
        bufferData = bufferIOSByteArray?.toNSData() as NSData?
        
        
        self.mBlockData = Data(referencing: bufferData)
        self.memoryTextView.text = ""
        
        startSession()
    }
    
    private func displayAlert(title:String, message:String)->() {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    private func displayBlockInfo(blockNumber:UInt, buffer:Data? ) {
        if let response = buffer {
            var blockNumber:Int = Int(self.blockAddress.text!)!
            for index in stride(from: 1, to: response.count, by: 4){
                let tmpBuffer:Data  = response[index...index+3]
                self.memoryTextView.text += "Block \(blockNumber)\t:\t"
                self.memoryTextView.text += tmpBuffer.toHexString().uppercased()
                self.memoryTextView.text += "\t"
                for hexval in tmpBuffer {
                    var asciiVal:Character!
                    if (hexval > 0x20) {
                      asciiVal = Character(UnicodeScalar(hexval))
                    }else{
                      asciiVal = Character(".")
                    }
                    self.memoryTextView.text += String(asciiVal)
                    self.memoryTextView.text += " "
                }
                self.memoryTextView.text += "\n"
                blockNumber += 1
            }
        }
    }

   
    override func viewDidLoad() {
        super.viewDidLoad()
        writingModePickerView.delegate = self
        mIndexUnitsList = 0
        // Do any additional setup after loading the view.
    }

     func startSession() {
        
         guard NFCNDEFReaderSession.readingAvailable else {
                 let alertController = UIAlertController(
                     title: "Scanning Not Supported",
                     message: "This device doesn't support tag scanning.",
                     preferredStyle: .alert
                 )
                 alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                 self.present(alertController, animated: true, completion: nil)
                 return
             }            
         tagSession = NFCTagReaderSession(pollingOption: [.iso15693], delegate: self, queue: self.coreNFCQueue)
         tagSession?.alertMessage = "Hold your smartphone near an NFC Type5 tag"
         tagSession?.begin()
     }

     func tagRemovalDetect(_ tag: NFCTag) {
            self.tagSession?.connect(to: tag) { (error: Error?) in
                if error != nil || !tag.isAvailable {
          
                    self.tagSession?.restartPolling()
                    return
                }
                DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + .milliseconds(500), execute: {
                    self.tagRemovalDetect(tag)
                })
            }
     }
        
     // NFCTagReaderSessionDelegate
     func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        // If necessary, you may perform additional operations on session start.
        // At this point RF polling is enabled.
     }

     func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        // If necessary, you may handle the error. Note session is no longer valid.
        // You must create a new session to restart RF polling.
        //session.restartPolling();
        session.invalidate();
     }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
        
         if tags.count > 1 {
            tagSession.alertMessage = "More than 1 tags was found. Please present only 1 tag."
            //tagSession.restartPolling()
            self.tagRemovalDetect(tags.first!)
            return
         }
        
        var iso15693Tag: NFCISO15693Tag!
        
        switch tags.first! {
            case let .iso15693(tag):
                iso15693Tag = tag .asNFCISO15693Tag()!
            break
            
             @unknown default:
                 session.invalidate(errorMessage: "Tag not valid or not type5")
                 //session.restartPolling()
             return
        }
     
        let miOSIso15693Tag : iOSIso15693 = iOSIso15693.init(iso15693Tag)
        
         session.connect(to: tags.first!) { (error: Error?) in
             if error != nil {
                 session.invalidate(errorMessage: "Connection error. Please try again.")
                 return
             }
            let tagUIDString:String = miOSIso15693Tag.id!.toHexString().replacingOccurrences(of: " ", with: "")
            session.alertMessage = "Tag UID : \(tagUIDString)"

            // Writing Buffer
            if (self.mIndexUnitsList == 0){
               DispatchQueue.global().async {
                   //let writeStatus = miOSIso15693Tag.writeSingleBlock(startAddress: UInt8(self.mBlockAddress),data: self.mBlockData)
                var writeResponse = miOSIso15693Tag.writeSingleBlock(startAddress: UInt8(self.mBlockAddress), data: self.mBlockData)
                var writeStatus:TagError!
                if (writeResponse == nil){
                    writeStatus = .ResponseError("No Tag answer")
                }else{
                    if writeResponse![0] == 0 {
                        // cmd succeed
                    } else {
                        // cmd error
                        writeStatus = .ResponseError((writeResponse?.toHexString())!)

                    }
                }
                
                   if writeStatus == nil  {
                       let response = miOSIso15693Tag.readSingleBlock(address: UInt8(self.mBlockAddress))
                       
                       DispatchQueue.main.sync {
                           let blockNumber:UInt = UInt(self.mBlockAddress)
                           self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                       }
                    }
                   // TagError
                   miOSIso15693Tag.sessionInvalidate(session: session,error:writeStatus)
               }
            }
            
            if (self.mIndexUnitsList == 1){
                DispatchQueue.global().async {
                    let writeResponse = miOSIso15693Tag.writeMultipleBlocks(startAddress: UInt8(self.mBlockAddress),data: self.mBlockData)
                    var writeStatus:TagError!
                    if (writeResponse == nil){
                        writeStatus = .ResponseError("No Tag answer")
                    }else{
                        if writeResponse![0] == 0 {
                            // cmd succeed
                        } else {
                            // cmd error
                            writeStatus = .ResponseError((writeResponse?.toHexString())!)

                        }
                    }

                    if writeStatus == nil  {
                         let numberOfBlockToRead:UInt16 = UInt16(self.mBlockData.count/4)
                        let response = miOSIso15693Tag.readMultipleBlocks(range: UInt8(self.mBlockAddress)..<UInt8(self.mBlockAddress!+numberOfBlockToRead))
                         
                         DispatchQueue.main.sync {
                             let blockNumber:UInt = UInt(self.mBlockAddress)
                             self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                         }
                    }
                    miOSIso15693Tag.sessionInvalidate(session: session,error:writeStatus)
                }
            }
            
            if (self.mIndexUnitsList == 2){
                DispatchQueue.global().async {
                    let writeResponse = miOSIso15693Tag.extendedWriteSingleBlock(startAddress: self.mBlockAddress, data: self.mBlockData)
                    var writeStatus:TagError!
                    if (writeResponse == nil){
                        writeStatus = .ResponseError("No Tag answer")
                    }else{
                        if writeResponse![0] == 0 {
                            // cmd succeed
                        } else {
                            // cmd error
                            writeStatus = .ResponseError((writeResponse?.toHexString())!)

                        }
                    }

                    if writeStatus == nil  {
                        let response = miOSIso15693Tag.extendedReadSingleBlock(address: self.mBlockAddress)
                        
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.mBlockAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }
                    }
                    miOSIso15693Tag.sessionInvalidate(session: session,error:writeStatus)
                }
            }
        } // connect
    }
    
    /* Picker Delegate */
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mUnitsList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.mUnitsList[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //self.mUrlTextField.text = self.list[row]
        //self.mDropDown.isHidden = true
        self.mIndexUnitsList = row
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: "System", size: 17)
            pickerLabel?.textAlignment = .center
        }
        pickerLabel?.text = mUnitsList[row]
        pickerLabel?.textColor = UIColor.white

        return pickerLabel!
    }

    
}
