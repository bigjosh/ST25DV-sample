//
//  ST25DVStopwatchViewController.swift
//  NFCTap 
//
//  Created by STMICROELECTRONICS on 14/11/2019.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit
import CoreNFC


class ST25DVStopwatchViewController: ST25UIViewController {
    

    internal var mTag : ComStSt25sdkNFCTag!

    internal var miOSReaderSession:iOSReaderSession!
    internal var mST25DVConfigurationPwd:Data!

    var mEnableMB: Bool?
    var mBuffer : Data?
    var mTransferTask : ComStSt25nfcType5St25dvST25DVTransferTask?

    var mCount = 0.0
    var mTimerChrono = Timer()

    let mTimeIntervalConfiguration = 0.1
    var mUpdateChronoLabel: Bool = true
    
    enum taskToDo {
        case initMB
        case enableMB
        case disableMB
        case startTransfer
        case resume
        case stopTransfer
    }
    internal var mTaskToDo:taskToDo = .initMB

    
    @IBOutlet weak var mStartButton: UIButton!
    @IBOutlet weak var mResumeButton: UIButton!
    @IBOutlet weak var mStopButton: UIButton!
    @IBOutlet weak var mMailBoxEnableSwitch: UISwitch!

    @IBOutlet weak var chronometerLabel: UILabel!
    
    @IBAction func enableMailBox(_ sender: UISwitch) {
        if (self.mMailBoxEnableSwitch.isOn){
            mTaskToDo = .enableMB
        }else{
            mTaskToDo = .disableMB
        }
        presentPwdController()
        //miOSReaderSession.startTagReaderSession()
    }

    
    @IBAction func startStopwatch(_ sender: Any) {
        if (self.mMailBoxEnableSwitch.isOn){
            startChrono()
            enableButtonsForStopResume()
            mTaskToDo = .startTransfer
            miOSReaderSession.startTagReaderSession()
        }else{
            warningAlert(message: "MB not enable !")
            //print("MB not enable !")
        }

    }
    
    @IBAction func resumeStopwatch(_ sender: Any) {

        if (self.mMailBoxEnableSwitch.isOn){
            resumeChrono()
            mUpdateChronoLabel = true
            mTaskToDo = .resume
            miOSReaderSession.startTagReaderSession()
        }else{
            warningAlert(message: "MB not enable !")
            //print("MB not enable !")
            
        }
    }
    
    @IBAction func stopStopwatch(_ sender: Any) {
        stopTaskTransfer()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Stopwatch"
        resetChrono()
        
        enableButtonsForStart()
        self.miOSReaderSession = iOSReaderSession(atagReaderSessionViewControllerDelegate: self)
        mTaskToDo = .initMB
        mEnableMB = false;
        miOSReaderSession.startTagReaderSession()
    }
    

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

    private func startTaskTransfer() {
        //print("startTaskTransfer MB")
        let mTransferAction = ComStSt25nfcType5St25dvST25DVTransferTask.FAST_CHRONO_DEMO_FUNCTION
        if mTag is ST25DVTag {
            mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: nil, with: mTag as! ST25DVTag)
        } else if mTag is ST25DVCTag {
            mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: nil, with: mTag as! ST25DVCTag)
        }
        mTransferTask!.setTransferListenerWith(self);
        mTransferTask!.start()
        mTransferTask!.run()
    }
    
    private func stopTaskTransfer() {
        //print("stopTransfer MB")
        if mTransferTask != nil {
            mTransferTask?.stop()
        }
        resetChrono()
        enableButtonsForStart()
    }
    
    private func continuStopwatchTransferSession() {
        //print("continuFWtransferSession")
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0,execute: { () -> Void in
            self.mTaskToDo = .resume
            self.miOSReaderSession.startTagReaderSession()
                
            self.mUpdateChronoLabel = true
            self.resumeChrono()
            self.mTransferTask?.resume()
        })
    }
    
    private func pauseStopwatchTransferSession() {
        print("pauseStopwatchTransferSession")
        self.mTransferTask?.pause()
        self.pauseChrono()
    }
    
    private func warningAlert(message : String) {
        UIHelper.warningAlert(viewController: self, title : "Stopwatch demo" , message: message)
    }
    
    private func transfertOnGoingAlert() {
        let alert = UIAlertController(title: "Stopwatch update", message: "Please Wait...Transfer still on going..", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5){
            alert.dismiss(animated: false, completion: nil)
        }
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
    

    
    private func enableButtonsForStart() {
        mStartButton.isEnabled = true
        mStartButton.alpha = 1.0

        mResumeButton.isEnabled = false
        mResumeButton.alpha = 0.66
        mStopButton.isEnabled = false
        mStopButton.alpha = 0.66
    }
    private func enableButtonsForStopResume() {
        mStartButton.isEnabled = false
        mStartButton.alpha = 0.66

        mResumeButton.isEnabled = true
        mResumeButton.alpha = 1.0

        mStopButton.isEnabled = true
        mStopButton.alpha = 1.0

    }

    
    // MARKS Stopwatch
    // Stopwatch
    private func startChrono() {
        resetChrono()
        self.mTimerChrono = Timer.scheduledTimer(timeInterval: mTimeIntervalConfiguration, target: self, selector: #selector(self.counter), userInfo: nil, repeats: true)
    }
    
    private func pauseChrono() {
        if self.mTimerChrono.isValid {
            self.mTimerChrono.invalidate()
        }
    }
    
    private func stopChrono() {
        resetChrono()
    }
    
    private func resumeChrono() {
        if  mTimerChrono != nil {
            mTimerChrono.invalidate()
        }
        mUpdateChronoLabel = true
        self.mTimerChrono = Timer.scheduledTimer(timeInterval: mTimeIntervalConfiguration, target: self, selector: #selector(self.counter), userInfo: nil, repeats: true)
    }
    
    private func resetChrono() {
        if mTimerChrono != nil {
            mTimerChrono.invalidate()
        }
        mCount = 0.0
        mUpdateChronoLabel = true

        if Thread.isMainThread {
            chronometerLabel.text = "00:00.00"
        } else {
            DispatchQueue.main.sync {
                 chronometerLabel.text = "00:00.00"
             }
        }
    }
    
    private func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = time - Double(minutes) * 60
        let secondsFraction = seconds - Double(Int(seconds))
        return String(format:"%02i:%02i.%02i",minutes,Int(seconds),Int(secondsFraction * 10.0))
    }
    
    func byteArray<T>(from value: T) -> [UInt8] where T: FixedWidthInteger {
        return withUnsafeBytes(of: value.bigEndian) { Array($0) }
    }
    
    private func timeByteArray(time:TimeInterval) -> Data {
    var response = Data([0x00, 0x00,0x00])
        let minutes = Int(time) / 60
        let seconds = time - Double(minutes) * 60
        let secondsFraction = seconds - Double(Int(seconds))
//        print (String(format:"%02i:%02i.%01i",minutes,Int(seconds),Int(secondsFraction * 10.0)))

        let minutesByte = byteArray(from: Int16(minutes)) // [255, x] x = value
        let secondesByte = byteArray(from: Int16(seconds)) // [255, x] x = value
        let secondsFractionByte = byteArray(from: Int16(secondsFraction * 10.0)) // [255, x] x = value
//        print("Converted count value :")
//        print(String(bytes: minutesByte, encoding: String.Encoding.utf8))
//        print(String(bytes: secondesByte, encoding: String.Encoding.utf8))
//        print(String(bytes: secondsFractionByte, encoding: String.Encoding.utf8))

        response[0] = minutesByte[1]
        response[1] = secondesByte[1]
        response[2] = secondsFractionByte[1]
        return response
    }
    
    @objc func counter() {
        mCount += mTimeIntervalConfiguration
        if (mUpdateChronoLabel) {
            chronometerLabel.text = timeString(time: TimeInterval(mCount))
        }
    }
    
}

extension ST25DVStopwatchViewController: ST25PasswordViewDelegate {
    func okButtonTapped(pwdValue: Data) {
        self.mST25DVConfigurationPwd = pwdValue
        self.miOSReaderSession.startTagReaderSession()
    }

    func cancelButtonTapped() {
    }
}

extension ST25DVStopwatchViewController: tagReaderSessionViewControllerDelegate {

    
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
        case .startTransfer:
            startTaskTransfer()
        case .resume:
            startTaskTransfer()
        case .stopTransfer:
            stopTaskTransfer()
        }
    }
    
    func handleTagSessionError(didInvalidateWithError error: Error) {
        //print(" ==== entry > handleTagSessionEnd in controller : \(self.mTaskToDo)")
        let errorNFC = error as! NFCReaderError
        if errorNFC.code ==  NFCReaderError.readerSessionInvalidationErrorSessionTimeout {
            // session Timeout detected
            // restart a session to continu
            DispatchQueue.main.sync {
                transfertOnGoingAlert()
            }
            mTransferTask?.pause()
            mUpdateChronoLabel = false
            self.miOSReaderSession = iOSReaderSession(atagReaderSessionViewControllerDelegate: self)
            continuStopwatchTransferSession()
        }
        else if errorNFC.code ==  NFCReaderError.readerSessionInvalidationErrorUserCanceled {
            mTransferTask?.pause()
            pauseChrono()
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
}

extension ST25DVStopwatchViewController: ComStSt25nfcType5St25dvST25DVTransferTask_OnTransferListener {
    // MARKS
     // ComStSt25pcModelST25DVTransferTask_OnTransferListener
     func transferOnProgress(with progressStatus: jdouble) {
         
     }
     
     func transferFinished(withBoolean success: jboolean, withLong time: jlong, with buffer: IOSByteArray!) {
         
     }
     
     func getDataToWrite() -> IOSByteArray! {
         let response = timeByteArray(time: TimeInterval(mCount))
         //print(mCount)
         //print(IOSByteArray.init(nsData: response).toNSData().toHexString())
         return (IOSByteArray.init(nsData: response))
     }
     // End ComStSt25pcModelST25DVTransferTask_OnTransferListener

}

