//
//  TagReadMemoryViewController.swift
//  ST25NFCApp
//
//  Created by STMicroelectronics on 9/9/19.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit
import CoreNFC

/// <#Description#>
class TagReadMemoryViewController: ST25UIViewController,NFCTagReaderSessionDelegate,UIPickerViewDataSource, UIPickerViewDelegate {

    // Reference the NFC session
    private var tagSession: NFCTagReaderSession!
    private let coreNFCQueue = DispatchQueue(label: "coreNFCQueue")

    //
    private var mUnitsList = [
    "readSingleBlock ",
    "readMultipleBlocks",
    "extendedReadSingleBlocks",
    "extendedReadMultipleBlocks",
    "fastReadSingleBlock ",
    "fastReadMultipleBlocks",
    "fastExtendedReadSingleBlocks",
    "fastExtendedReadMultipleBlocks"
    ]
    
    private var mIndexUnitsList:Int!
    private var startAddress:UInt16!
    private var numberOfItems:UInt16!
    
    @IBOutlet weak var unitsPickerView: UIPickerView!
    @IBOutlet weak var startAddressTextField: UITextField!
    @IBOutlet weak var numberOfItemsTextField: UITextField!
    @IBOutlet weak var memoryTextView: UITextView!
    
    var mSemaphore:DispatchSemaphore!
    
    @IBAction func startButton(_ sender: Any) {
        self.memoryTextView.text = ""
        startSession()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        unitsPickerView.delegate = self
        mIndexUnitsList = 0
        // Do any additional setup after loading the view.
    }
    
    private func displayBlockInfo(blockNumber:UInt, buffer:Data? ) {
        if let response = buffer {
            var blockNumber:Int = Int(self.startAddressTextField.text!)!
            if response != nil && response.count > 4 && response[0] == 0x00 {
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
            } else {
                UIHelper.warningAlert(viewController: self, title: "Command error", message: response.toHexString())
            }

        }
    }
    
    
    
    func startSession() {
        
        startAddress  = UInt16(self.startAddressTextField.text!)!
        numberOfItems = UInt16(self.numberOfItemsTextField.text!)!

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
        
        session.connect(to: tags.first!) { [self] (error: Error?) in
             if error != nil {
                 session.invalidate(errorMessage: "Connection error. Please try again.")
                 return
             }

            let tagUIDString:String = miOSIso15693Tag.id!.toHexString().replacingOccurrences(of: " ", with: "")
            session.alertMessage = "Tag UID : \(tagUIDString)"
            
            if (self.mIndexUnitsList == 0){
                if self.startAddress > UInt8.max {
                    session.invalidate(errorMessage: "Invalid Start @ : \(self.startAddress). Please try again.")

                } else {
                    DispatchQueue.global().async {
                        var response = miOSIso15693Tag.readSingleBlock(address: UInt8(self.startAddress))
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.startAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }
                        miOSIso15693Tag.sessionInvalidate(session: session)
                    }
                }

            }
            
            if (self.mIndexUnitsList == 1){
                if self.startAddress > UInt8.max || UInt16(self.startAddress+self.numberOfItems) > UInt8.max || self.numberOfItems > 65 {
                    session.invalidate(errorMessage: "Invalid Start @ : \(self.startAddress) or Nb of items : \(self.numberOfItems). Please try again.")

                } else {
                    DispatchQueue.global().async {
                        var response = miOSIso15693Tag.readMultipleBlocks(range: UInt16(self.startAddress)..<UInt16(self.startAddress+self.numberOfItems))
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.startAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }
                        miOSIso15693Tag.sessionInvalidate(session: session)
                    }
                }

            }
            
            if (self.mIndexUnitsList == 2){
                DispatchQueue.global().async {
                    var response = miOSIso15693Tag.extendedReadSingleBlock(address: UInt16(self.startAddress))
                    
                    DispatchQueue.main.sync {
                        let blockNumber:UInt = UInt(self.startAddress)
                        self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                    }

                    miOSIso15693Tag.sessionInvalidate(session: session)
                 }
            }
            
            if (self.mIndexUnitsList == 3){
                if self.numberOfItems > 65 {
                    session.invalidate(errorMessage: "Max number of blocks reached (Max 65). Please try again.")
                } else {
                    DispatchQueue.global().async {
                        var response = miOSIso15693Tag.extendedReadMultipleBlocks(range: UInt16(self.startAddress)..<UInt16(self.startAddress+self.numberOfItems))
                        
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.startAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }

                        miOSIso15693Tag.sessionInvalidate(session: session)
                     }
                }

           }
            
            if (self.mIndexUnitsList == 4){
                if self.startAddress > UInt8.max || UInt16(self.startAddress+self.numberOfItems) > UInt8.max {
                    session.invalidate(errorMessage: "Invalid Start @ : \(self.startAddress) or Nb of items : \(self.numberOfItems). Please try again.")

                } else {
                    DispatchQueue.global().async {
                        var response = miOSIso15693Tag.fastReadSingleBlock(address: UInt8(self.startAddress))
                        
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.startAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }

                        miOSIso15693Tag.sessionInvalidate(session: session)
                     }
                }

           }
            
            if (self.mIndexUnitsList == 5){
                if self.startAddress > UInt8.max || UInt16(self.startAddress+self.numberOfItems) > UInt8.max || self.numberOfItems > 65  {
                    session.invalidate(errorMessage: "Invalid Start @ : \(self.startAddress) or Nb of items : \(self.numberOfItems). Please try again.")

                } else {
                    DispatchQueue.global().async {
                        var response = miOSIso15693Tag.fastReadMultipleBlocks(range: UInt8(self.startAddress)..<UInt8(self.startAddress+self.numberOfItems))
                        
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.startAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }

                        miOSIso15693Tag.sessionInvalidate(session: session)
                     }
                    
                }

            }
            
            if (self.mIndexUnitsList == 6){
                DispatchQueue.global().async {
                    var response = miOSIso15693Tag.fastExtendedReadSingleBlock(address: UInt16(self.startAddress))
                    
                    DispatchQueue.main.sync {
                        let blockNumber:UInt = UInt(self.startAddress)
                        self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                    }

                    miOSIso15693Tag.sessionInvalidate(session: session)
                 }
            }
            
            if (self.mIndexUnitsList == 7){
                
                if self.numberOfItems > 65 {
                    session.invalidate(errorMessage: "Max number of blocks reached (Max 65). Please try again.")
                } else {
                    DispatchQueue.global().async {
                        var response = miOSIso15693Tag.fastExtendedReadMultipleBlocks(range: UInt16(self.startAddress)..<UInt16(self.startAddress+self.numberOfItems))
                        
                        DispatchQueue.main.sync {
                            let blockNumber:UInt = UInt(self.startAddress)
                            self.displayBlockInfo(blockNumber: blockNumber, buffer: response)
                        }

                        miOSIso15693Tag.sessionInvalidate(session: session)
                     }
                    
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
