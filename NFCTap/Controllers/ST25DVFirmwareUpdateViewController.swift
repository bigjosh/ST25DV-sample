//
//  ST25DVFirmwareUpdateViewController.swift
//  NFCTap 
//
//  Created by STMICROELECTRONICS on 28/10/2019.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit
import MobileCoreServices
import CoreNFC


class ST25DVFirmwareUpdateViewController: ST25UIViewController , UIDocumentPickerDelegate {


    internal var mST25DVCTag:ST25DVCTag!
    internal var mTag : ComStSt25sdkNFCTag!

    internal var miOSReaderSession:iOSReaderSession!
    internal var mST25DVConfigurationPwd:Data!
    
    var mEnableMB: Bool?
    var mBuffer : Data?
    var mTransferTask : ComStSt25nfcType5St25dvST25DVTransferTask?
    
    var mTimer: Timer!
    var mEntryStrPassword: String!
    
    var mCount = 0
    var mTimerChrono = Timer()

    enum taskToDo {
        case initMB
        case enableMB
        case disableMB
        case presentPassword
        case startTransfer
        case resume
        case stopTransfer
    }
    internal var mTaskToDo:taskToDo = .initMB
    
    
    /// Creating UIDocumentInteractionController instance.
    let documentInteractionController = UIDocumentInteractionController()

    @IBOutlet weak var mSelectFileButton: UIButton!
    @IBOutlet weak var mStartbutton: UIButton!
    @IBOutlet weak var mStopButton: UIButton!
    
    
    @IBOutlet weak var mFileInformationLabel: UILabel!
    @IBOutlet weak var mMailBoxEnableSwitch: UISwitch!
    @IBOutlet weak var fwProgressBar: UIProgressView!
    

    @IBAction func enableMailBox(_ sender: Any) {
        if (self.mMailBoxEnableSwitch.isOn){
            mTaskToDo = .enableMB
        }else{
            mTaskToDo = .disableMB
        }
        //miOSReaderSession.startTagReaderSession()
        presentPwdController()
    }
    
    
    @IBAction func startFwTransfer(_ sender: Any) {
        if (self.mMailBoxEnableSwitch.isOn){
            startFWPresentPwdtransferSession()
        }else{
            print("TODO - Check files et MB enable")
        }
    }
    
    @IBAction func stopFwTransfer(_ sender: Any) {
        stopTaskTransfer()
        resetChrono()
        if mTimer != nil {
            mTimer.invalidate()
        }
    }
    
    @IBAction func selectFirmware(_ sender: Any) {

        let otherAlert = UIAlertController(title: "Firmware selection", message: "Which firmware do you want to use?", preferredStyle: UIAlertController.Style.actionSheet)
        let embeddedFW = UIAlertAction(title: "Embedded FW-MB1283", style: UIAlertAction.Style.default, handler: self.embeddedFWHandler)
        let embeddedFW2 = UIAlertAction(title: "Embedded FW-MB1396", style: UIAlertAction.Style.default, handler: self.embeddedFWHandler1396)
        let storageFW = UIAlertAction(title: "Storage FW", style: UIAlertAction.Style.default, handler: self.storageFWHandler)

        let dismiss = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)

        // relate actions to controllers
        otherAlert.addAction(embeddedFW)
        otherAlert.addAction(embeddedFW2)
        otherAlert.addAction(storageFW)
        otherAlert.addAction(dismiss)

        present(otherAlert, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Firmware update"
        
        mFileInformationLabel.text = "Please select a file first !"
        miOSReaderSession = iOSReaderSession(atagReaderSessionViewControllerDelegate: self)
        mTaskToDo = .initMB
        mEnableMB = false;
        miOSReaderSession.startTagReaderSession()
        
        fwProgressBar.transform = CGAffineTransform(scaleX: 1, y: 4)
        fwProgressBar.progress = 0
        fwProgressBar.layer.cornerRadius = 10
        fwProgressBar.clipsToBounds = true
        fwProgressBar.layer.sublayers![1].cornerRadius = 10
        fwProgressBar.subviews[1].clipsToBounds = true
        fwProgressBar.layer.borderColor = UIColor.lightGray.cgColor
        
        enableButtonsForSelectFile()
    }
    
    // MARKS Documents selection and Document Picker delegates functions
    //
    func embeddedFWHandler(alert: UIAlertAction){
        //print("You tapped: \(alert.title)")
        readEmbeddedFWFile(fw: 1)
    }
    
    func embeddedFWHandler1396(alert: UIAlertAction){
        //print("You tapped: \(alert.title)")
        readEmbeddedFWFile(fw: 2)
    }
    
    func storageFWHandler(alert: UIAlertAction){
        //print("You tapped: \(alert.title)")
        //warningAlert(message: "Not yet implemented !")
        
        //let types = [String(kUTTypePNG), String(kUTTypeJPEG), String(kUTTypePlainText)]
        //let types = [String("com.st.st25nfc.fw"), String("public.item")]
        let types = ["public.item", "public.folder", "public.directory"]

        let documentPickerViewController =
        UIDocumentPickerViewController(documentTypes: types,
                                       in: .import)

        documentPickerViewController.delegate = self
        documentPickerViewController.shouldShowFileExtensions = true
        documentPickerViewController.allowsMultipleSelection   = false
        documentPickerViewController.overrideUserInterfaceStyle = .dark

        // Set the initial directory.
        //self.navigationController?.pushViewController(documentPickerViewController, animated: true)
        self.present(documentPickerViewController, animated: true, completion: nil)
    }
    

    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        print("Cancelled")
        controller.dismiss(animated: true, completion: nil)

    }

    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        //print("didPickDocuments at \(urls)")
        if controller.documentPickerMode == UIDocumentPickerMode.import {
            do {
                mBuffer = try NSData(contentsOf: urls[0] as URL) as Data
                let byteArray = [UInt8](mBuffer!)
                let mBufferSize = byteArray.count
                let theFileName = (urls[0].absoluteString as NSString).lastPathComponent.description
                let fileSelected = "File selected :" + theFileName
                let informationMessage: String = fileSelected + "\n" + "File size : " + mBufferSize.description
                print (informationMessage)
                mFileInformationLabel.text = informationMessage
                UIHelper.UI {
                    self.enableButtonsForStart()
                }
            }
            catch {
                print("Error...")
            }
        }

    }

    // MARKS UI Button Enable/disable

    private func enableButtonsForSelectFile() {
        mSelectFileButton.isEnabled = true
        mSelectFileButton.alpha = 1.0
        
        mStartbutton.isEnabled = false
        mStartbutton.alpha = 0.66
        
        mStopButton.isEnabled = false
        mStopButton.alpha = 0.66
    }
    
    private func enableButtonsForStart() {
        mSelectFileButton.isEnabled = true
        mSelectFileButton.alpha = 1.0
        
        mStartbutton.isEnabled = true
        mStartbutton.alpha = 1.0
        
        mStopButton.isEnabled = false
        mStopButton.alpha = 0.66
    }
    private func enableButtonsForStop() {
        mSelectFileButton.isEnabled = false
        mSelectFileButton.alpha = 0.66
        
        mStartbutton.isEnabled = false
        mStartbutton.alpha = 0.66
        
        mStopButton.isEnabled = true
        mStopButton.alpha = 1.0
    }
    
    // MARKS Functions related to TaskToDo
    private func initMB() {
        //print("init MB")
        
        if mTag is ST25DVTag {
            mEnableMB = (mTag as! ST25DVTag).isMailboxEnabled(withBoolean: false)
        } else if mTag is ST25DVCTag {
            mEnableMB = (mTag as! ST25DVCTag).isMailboxEnabled(withBoolean: false)
        }
        DispatchQueue.main.sync {
            mMailBoxEnableSwitch.setOn(mEnableMB!, animated: true)
        }
    }

    
    private func enableMB() {
        if mTag is ST25DVTag {
            enableMB(tag: mTag as! ST25DVTag)
        } else if mTag is ST25DVCTag {
            enableMB(tag: mTag as! ST25DVCTag)
        }
    }
    
    private func enableMB(tag : ST25DVTag) {
        //print("enableMB MB")
        //let pwd:Data = Data([0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00])
        //print("PWD = " + self.mST25DVConfigurationPwd.toHexString())
        tag.presentPassword(passwordNumber: UInt8(ComStSt25sdkType5St25dvST25DVTag_ST25DV_CONFIGURATION_PASSWORD_ID), password: self.mST25DVConfigurationPwd)
        tag.enableMailbox()
        mEnableMB = true
    }
    private func enableMB(tag : ST25DVCTag) {
        //print("enableMB MB")
        //let pwd:Data = Data([0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00])
        //print("PWD = " + self.mST25DVConfigurationPwd.toHexString())
        tag.presentPassword(passwordNumber: UInt8(ComStSt25sdkType5St25dvST25DVTag_ST25DV_CONFIGURATION_PASSWORD_ID), password: self.mST25DVConfigurationPwd)
        tag.enableMailbox()
        mEnableMB = true
    }
    
    private func disableMB() {
        if mTag is ST25DVTag {
            disableMB(tag: mTag as! ST25DVTag)
        } else if mTag is ST25DVCTag {
            disableMB(tag: mTag as! ST25DVCTag)
        }
    }
    private func disableMB(tag : ST25DVTag) {
        //print("disable MB")
        //print("PWD = " + self.mST25DVConfigurationPwd.toHexString())
        //let pwd:Data = Data([0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00])
        tag.presentPassword(passwordNumber: UInt8(ComStSt25sdkType5St25dvST25DVTag_ST25DV_CONFIGURATION_PASSWORD_ID), password: self.mST25DVConfigurationPwd)
        tag.disableMailbox()
        mEnableMB = false
    }

    private func disableMB(tag : ST25DVCTag) {
        //print("disable MB")
        //print("PWD = " + self.mST25DVConfigurationPwd.toHexString())
        //let pwd:Data = Data([0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00])
        tag.presentPassword(passwordNumber: UInt8(ComStSt25sdkType5St25dvST25DVTag_ST25DV_CONFIGURATION_PASSWORD_ID), password: self.mST25DVConfigurationPwd)
        tag.disableMailbox()
        mEnableMB = false
    }


    
    private func startFWPresentPwdtransferSession() {
        print("startFWPresentPwdtransferSession")
        if mBuffer != nil {
            presentPasswordForFWTransferDemo()
        } else {
            print("Buffer is empty, no file selected")
            warningAlert(message: "Buffer is empty, no file selected !")
        }
        

    }
    
    private func startFWtransferSession() {
        print("startFWtransferSession")
        if mBuffer != nil {

            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0,execute: { () -> Void in
                self.mTaskToDo = .startTransfer
                self.miOSReaderSession.startTagReaderSession()
            })
        } else {
            print("Buffer is empty, no file selected")
            warningAlert(message: "Buffer is empty, no file selected !")
        }
        
        
    }
    
    private func continutransferSession() {
        print("continutransferSession")
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0,execute: { () -> Void in
            self.mTaskToDo = .resume
            self.miOSReaderSession.startTagReaderSession()
        })
    }
    

    
    private func startTaskPresentPassword() {
        print("startTaskPresentPassword")
        
        if mBuffer != nil {
            DispatchQueue.main.sync {
                fwProgressBar.progress = 0
            }
            // PWD
            if mEntryStrPassword != nil {
                //let strPwd = "12345678"
                let strPwd = mEntryStrPassword
                let bufferIOSByteArray = ComStSt25sdkHelper.convertHexStringToByteArray(with:strPwd)
                
                let mTransferAction = ComStSt25nfcType5St25dvST25DVTransferTask.FAST_PRESENT_PWD_FUNCTION
                
                if mTag is ST25DVTag {
                    self.mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: bufferIOSByteArray, with: mTag as! ST25DVTag)
                } else if mTag is ST25DVCTag {
                    self.mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: bufferIOSByteArray, with: mTag as! ST25DVCTag)
                }

                self.mTransferTask!.setTransferListenerWith(self);
                self.mTransferTask!.start()
                self.mTransferTask!.run()
            } else {
                DispatchQueue.main.sync {
                    warningAlert(message: "Empty password !")
                }
            }
        } else {
            print("Buffer is empty, no file selected")
            DispatchQueue.main.sync {
                warningAlert(message: "Buffer is empty, no file selected !")
            }
        }
    }

    // must be internal or public.
    @objc func update() {
        stopTaskTransfer()
    }

    private func startTaskTransfer() {
        print("startTaskTransfer MB")
        // Data
        if mBuffer != nil {
            if mTimer != nil {
                mTimer.invalidate()
            }
            self.mTaskToDo = .startTransfer

            // start a timer to stop transfer after 1'30 if transfer not completed to avoid background tasks still running if any
            mTimer = Timer.scheduledTimer(timeInterval: 90.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: false)

            let bufferIOSByteArray = IOSByteArray.init(nsData: NSData(data: mBuffer!) as Data)
            
            let mTransferAction = ComStSt25nfcType5St25dvST25DVTransferTask.FAST_FIRMWARE_UPDATE_FUNCTION
            
            if mTag is ST25DVTag {
                self.mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: bufferIOSByteArray, with: mTag as! ST25DVTag)
            } else if mTag is ST25DVCTag {
                self.mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: bufferIOSByteArray, with: mTag as! ST25DVCTag)
            }
            self.mTransferTask!.setTransferListenerWith(self);
            self.mTransferTask!.start()
            self.mTransferTask!.run()
            DispatchQueue.main.sync {
                enableButtonsForStart()
            }
        } else {
            print("Buffer is empty, no file selected !")
            DispatchQueue.main.sync {
                warningAlert(message: "Buffer is empty, no file selected !")
            }
        }
    }
    
    private func stopTaskTransfer() {
        print("stopTransfer MB")
        self.mTaskToDo = .stopTransfer
        if self.mTransferTask != nil {
            self.mTransferTask?.stop()
        }
        if self.mTimer != nil {
            self.mTimer.invalidate()
        }
        enableButtonsForStart()
    }
    
    private func continuTaskTransfer() {
        print("continuTransfer MB")
        if self.mTransferTask != nil {
            self.mTransferTask?.resume()
            self.mTransferTask?.run()

        }
    }
    

    
    private func continuTransferSession() {
        print("continutransferSession")
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0,execute: { () -> Void in
            self.mTaskToDo = .resume
            self.miOSReaderSession.startTagReaderSession()
        })
    }
    
    private func presentPwdController() {
        let mST25PasswordVC:ST25PasswordViewController = UIStoryboard(name: "ST25Password", bundle: nil).instantiateViewController(withIdentifier: "ST25PasswordID") as! ST25PasswordViewController
        mST25PasswordVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        mST25PasswordVC.setTitle("Enter configuration password")
        mST25PasswordVC.setMessage("(64 bits hexadecimal format)")
        mST25PasswordVC.numberOfBytes = 8
        mST25PasswordVC.delegate = self
        self.present(mST25PasswordVC, animated: false, completion: nil)
    }
    
    private func presentPasswordForFWTransferDemo() {
        var inputTextField: UITextField?;

        let passwordPrompt = UIAlertController(title: "Enter Password", message: "Please enter firmware update password", preferredStyle: UIAlertController.Style.alert);

        passwordPrompt.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) -> Void in
            // Now do whatever you want with inputTextField (remember to unwrap the optional)

            self.mEntryStrPassword = (inputTextField?.text)!
            
            self.initChrono()

            DispatchQueue.main.async {
                self.mTaskToDo = .presentPassword
                self.miOSReaderSession.startTagReaderSession()
            }

        }));


        passwordPrompt.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { (action) -> Void in
            print("done");
        }));

        passwordPrompt.addTextField(configurationHandler: {(textField:  UITextField!) in
            //textField.placeholder = "12345678"
            textField.text = "12345678"
            inputTextField = textField
        });
        self.present(passwordPrompt, animated: true, completion: nil);
        return;
    }
    
    
    @objc func counter() {
        mCount += 1
    }

    private func initChrono() {
        resetChrono()
        self.mTimerChrono = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.counter), userInfo: nil, repeats: true)
    }
    
    private func resetChrono() {
        if mTimerChrono != nil {
            mTimerChrono.invalidate()
        }
        mCount = 0
        //counterLabel.text = "00"
    }
    
    private func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = time - Double(minutes) * 60
        let secondsFraction = seconds - Double(Int(seconds))
        return String(format:"%02i:%02i.%01i",minutes,Int(seconds),Int(secondsFraction * 10.0))
    }
    
    
    private func readEmbeddedFWFile (fw: Int) {
        var firmwareFiles = [String]()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath
        let items = try! fm.contentsOfDirectory(atPath: path!)
        firmwareFiles = items.filter{$0.hasSuffix("bin")}
        //print(firmwareFiles)
        
        // ST25DVDemo_FwUpgrd.bin
        //let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] _MB1396
        
        // Default - The last uptodate
        var fileName = "ST25DVDemo_FwUpgrd_MB1396.bin"
        // selection according to Board
        if fw == 1 {
            // Original one for board MB1283
            fileName = "ST25DVDemo_FwUpgrd_MB1283.bin"

        }
        if fw == 2 {
            fileName = "ST25DVDemo_FwUpgrd_MB1396.bin"

        }
                
        //fm.contents(atPath: path! + "ST25DVDemo_FwUpgrd.bin")
        // Following checks will be used later on
//        if fm.fileExists(atPath: fwFilepath) {
//            print("ST25DVDemo_FwUpgrd.bin : File exists")
//        } else {
//            print("File not found")
//        }
//
//        if fm.isReadableFile(atPath: fwFilepath) {
//            print("File is readable")
//        } else {
//            print("File is not readable")
//        }
        
        mBuffer = fm.contents(atPath: path! + "/" + fileName)
        if mBuffer == nil {
            UIHelper.UI { [self] in
                warningAlert(message: "File not found ..")
            }
            return
        }
        let byteArray = [UInt8](mBuffer!)
        let mBufferSize = byteArray.count
        
        let informationMessage: String = "File selected :" + fileName + "\n" +
            "File size : " + mBufferSize.description
        //print (informationMessage)
        mFileInformationLabel.text = informationMessage
        enableButtonsForStart()
    }
    
    private func warningAlert(message : String) {
        UIHelper.warningAlert(viewController: self, title : "Firmware update" , message: message)
    }
    
    private func transfertOnGoingAlert() {
        let alert = UIAlertController(title: "Firmware update", message: "Please Wait...Transfer still on going..", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5){
            alert.dismiss(animated: false, completion: nil)
        }
    }
    
    private func setTag(st25SDKTag: ComStSt25sdkNFCTag) {
        if st25SDKTag is ST25DVTag {
            mTag = st25SDKTag as! ST25DVTag
        } else if st25SDKTag is ST25DVCTag {
            mST25DVCTag = st25SDKTag as! ST25DVCTag
        } else {
            DispatchQueue.main.async {
                self.warningAlert(message: "Error - Invalid Tag")
            }
        }
    }
}


extension ST25DVFirmwareUpdateViewController: ST25PasswordViewDelegate {
    func okButtonTapped(pwdValue: Data) {
        self.mST25DVConfigurationPwd = pwdValue
        self.miOSReaderSession.startTagReaderSession()
    }

    func cancelButtonTapped() {
    }
}

extension ST25DVFirmwareUpdateViewController: ComStSt25nfcType5St25dvST25DVTransferTask_OnTransferListener {
    // MARKS delegates methods from Transfer tasks
    
    func transferOnProgress(with progressStatus: jdouble) {
        //print("Transfer in progress")
        //print(progressStatus)
       if (mTaskToDo == .startTransfer || mTaskToDo == .resume) {
           DispatchQueue.main.sync {
                self.fwProgressBar.setProgress(Float(progressStatus),animated:false)
            }
        }
    }
    
    func transferFinished(withBoolean success: jboolean, withLong time: jlong, with buffer: IOSByteArray!) {
        if mTaskToDo == .presentPassword {
            if success {
                //print("password ok")
                DispatchQueue.main.async {
                    self.enableButtonsForStop()
                }
                startTaskTransfer()
            } else {
                //print("wrong password")
                DispatchQueue.main.sync {
                    warningAlert(message: "Wrong password : \(mEntryStrPassword)")
                }
                
            }
        } else if (mTaskToDo == .startTransfer || mTaskToDo == .resume ) {

            if success {
                //print("Transfer ok")
                self.mTaskToDo = .stopTransfer
                DispatchQueue.main.sync {
                    warningAlert(message: "Transfer successful : \(timeString(time: TimeInterval(mCount)))")
                }
                
            } else {
                self.mTaskToDo = .stopTransfer
                //print("Transfer failed")
                DispatchQueue.main.sync {
                    warningAlert(message: "Transfer failed or cancelled : \(timeString(time: TimeInterval(mCount)))")
                }
            }
            DispatchQueue.main.async {
                self.enableButtonsForStart()
            }
            resetChrono()
        }
    }
    
    func getDataToWrite() -> IOSByteArray! {
        return nil
    }

}

extension ST25DVFirmwareUpdateViewController: tagReaderSessionViewControllerDelegate {

    func handleTagSessionError(didInvalidateWithError error: Error) {
        //print(error.localizedDescription)
        //print(" ==== handleTagSessionError > : \(error.self.localizedDescription)")
        //print(" ==== entry > handleTagSessionEnd in controller : \(self.mTaskToDo)")
        let errorNFC = error as! NFCReaderError
        if errorNFC.code ==  NFCReaderError.readerSessionInvalidationErrorSessionTimeout {
            // session Timeout detected
            // restart a session to continu
            DispatchQueue.main.sync {
                transfertOnGoingAlert()
            }
            if (mTaskToDo == .startTransfer || mTaskToDo == .resume ) {
                mTransferTask?.pause()
                 self.miOSReaderSession = iOSReaderSession(atagReaderSessionViewControllerDelegate: self)
                 continuTransferSession()
            }
         } else if errorNFC.code ==  NFCReaderError.readerSessionInvalidationErrorUserCanceled {
            mTransferTask?.stop()
            DispatchQueue.main.sync {
                enableButtonsForStart()
            }
        }
     }
    
    func handleTagST25SdkError(didInvalidateWithError error: NSException) {
        if mTaskToDo == taskToDo.enableMB || mTaskToDo == taskToDo.disableMB {
            print(error.description)
            DispatchQueue.main.async {
                self.mMailBoxEnableSwitch.setOn(self.mEnableMB!, animated: true)
                self.warningAlert(message: "Command failed: \(error.description)")
            }

        }
        
    }
 
    func handleTag(st25SDKTag: ComStSt25sdkNFCTag, uid: Data!) throws {

        mTag = st25SDKTag

        if (!(mTag is ST25DVTag || mTag is ST25DVCTag)){
            UIHelper.UI() {
                self.warningAlert(message: "Tag do not support this feature ...")
            }
            return
        }
        if mTag is ST25DVTag {
            mTransferTask?.setST25DVTagWith(mTag as! ST25DVTag)
        } else if mTag is ST25DVCTag {
            mTransferTask?.setST25DVTagWith(mTag as! ST25DVCTag)
        }

        
        switch mTaskToDo {
        case .initMB:
            initMB()
        case .enableMB:
            enableMB()
        case .disableMB:
            disableMB()
        case .presentPassword:
            startTaskPresentPassword()
        case .startTransfer:
            startTaskTransfer()
        case .resume:
            continuTaskTransfer()
        case .stopTransfer:
            stopTaskTransfer()
        }
        
    }
}
