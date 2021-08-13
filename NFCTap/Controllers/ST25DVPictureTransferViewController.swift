//
//  ST25DVPictureTransferViewController.swift
//  NFCTap
//
//  Created by STMICROELECTRONICS on 06/11/2019.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit
import CoreNFC

class ST25DVPictureTransferViewController: ST25UIViewController   {

    internal var mTag:ComStSt25sdkNFCTag!
    //internal var mST25DVCTag:ST25DVCTag!
    internal var miOSReaderSession:iOSReaderSession!
    internal var mST25DVConfigurationPwd:Data!

    var mEnableMB: Bool?
    var mBuffer : Data?
    var mTransferTask : ComStSt25nfcType5St25dvST25DVTransferTask?
    var mUploadEnable = false
    var mDownloadEnable = false
    
    
    enum taskToDo {
        case initMB
        case enableMB
        case disableMB
        case resume
        case startTransfer
        case stopTransfer
    }
    internal var mTaskToDo:taskToDo = .initMB
    
    let mQueueForTasksTansfer = DispatchQueue(label: "Image transfer")

    @IBOutlet weak var mMailBoxEnableSwitch: UISwitch!
    
    @IBOutlet weak var mUploadEnableSwitch: UISwitch!
    @IBOutlet weak var mDownloadEnableSwitch: UISwitch!

    @IBOutlet weak var mUploadImageView: UIImageView!
    @IBOutlet weak var mDownloadImageView: UIImageView!
    
    
    @IBAction func mDownloadSwitchAction(_ sender: Any) {
        if mDownloadEnableSwitch.isOn {
            mUploadEnableSwitch.setOn(false, animated: true)
            mUploadEnable = false
            mDownloadEnable = true
            
        } else {
            mDownloadEnable = false
        }
    }
    
    
    @IBAction func mUploadSwitchAction(_ sender: Any) {
        if mUploadEnableSwitch.isOn {
            mDownloadEnableSwitch.setOn(false, animated: true)
            mDownloadEnable = false
            mUploadEnable = true
            //mBuffer = mUploadImageView.image?.pngData()
            mBuffer = mUploadImageView.image?.jpegData(compressionQuality: 0.5)
            print("Image size : \(mBuffer?.count)")
        } else {
            mUploadEnable = false

        }

    }
    @IBAction func startTransfer(_ sender: Any) {
        self.mTaskToDo = .startTransfer
        self.miOSReaderSession.startTagReaderSession()

    }
        
    
    @IBAction func enableMailBox(_ sender: Any) {
        if (self.mMailBoxEnableSwitch.isOn){
            mTaskToDo = .enableMB
        }else{
            mTaskToDo = .disableMB
        }
        presentPwdController()
        //miOSReaderSession.startTagReaderSession()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Picture transfer"

        self.miOSReaderSession = iOSReaderSession(atagReaderSessionViewControllerDelegate: self)
        mTaskToDo = .initMB
        mEnableMB = false;
        miOSReaderSession.startTagReaderSession()

        mDownloadEnableSwitch.setOn(false, animated: true)
        mUploadEnableSwitch.setOn(false, animated: true)
        // Do any additional setup after loading the view.
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

    
    private func startTransfer() {
        if  mDownloadEnable {
            
            let mTransferAction = ComStSt25nfcType5St25dvST25DVTransferTask.FAST_IMAGE_DOWNLOAD_FUNCTION
            if mTag is ST25DVTag {
                mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: nil, with: mTag as! ST25DVTag)
                mTransferTask?.setST25DVTagWith(mTag as! ST25DVTag)
            } else if mTag is ST25DVCTag {
                mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: nil, with: mTag as! ST25DVCTag)
                mTransferTask?.setST25DVTagWith(mTag as! ST25DVCTag)
            }
            mTransferTask!.setTransferListenerWith(self);
            mTransferTask!.start()
            mTransferTask!.run()

        }
        if mUploadEnable  {
            // Data
            if mBuffer != nil {
                let bufferIOSByteArray = IOSByteArray.init(nsData: NSData(data: mBuffer!) as Data)
                print ("Transfer size : \(String(describing: bufferIOSByteArray?.length()))")
                let mTransferAction = ComStSt25nfcType5St25dvST25DVTransferTask.FAST_IMAGE_UPLOAD_FUNCTION
                
                if mTag is ST25DVTag {
                    mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: bufferIOSByteArray, with: mTag as! ST25DVTag)
                    mTransferTask?.setST25DVTagWith(mTag as! ST25DVTag)
                } else if mTag is ST25DVCTag {
                    mTransferTask = ComStSt25nfcType5St25dvST25DVTransferTask(int: mTransferAction, with: bufferIOSByteArray, with: mTag as! ST25DVCTag)
                    mTransferTask?.setST25DVTagWith(mTag as! ST25DVCTag)
                }

                mTransferTask!.setTransferListenerWith(self);
                mTransferTask!.start()
                mTransferTask!.run()
            } else {
                print("buffer is empty")
            }
        }
    }
    
    private func stopTransfer() {
        print("stopTransfer MB")
        if mTransferTask != nil {
            mTransferTask?.stop()
        }
    }

    private func continuTaskTransfer() {
        print("continuTransfer MB")
        if mTransferTask != nil {
            mTransferTask?.resume()
            mTransferTask?.run()

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

    private func continutransferSession() {
        print("continutransferSession")
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0,execute: { () -> Void in
            self.mTaskToDo = .resume
            self.miOSReaderSession.startTagReaderSession()
        })
    }
    
    private func warningAlert(message : String) {
        UIHelper.warningAlert(viewController: self, title : "Picture update" , message: message)
    }
    
    private func transfertOnGoingAlert() {
        let alert = UIAlertController(title: "Picture update", message: "Please Wait...Transfer still on going..", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5){
            alert.dismiss(animated: false, completion: nil)
        }
    }
    

    
    private func resizeImageWithAspect(image: UIImage,ratio :CGFloat)->UIImage? {
        let oldWidth = image.size.width;
        let oldHeight = image.size.height;

        let newHeight = (( oldHeight - 10) * ratio / 100 + 10 )
        let newWidth = (( oldWidth - 10) * ratio / 100 + 10 )
        
        print(newHeight)
        print(newWidth)
        
        let newSize = CGSize(width: newWidth, height: newHeight)

        UIGraphicsBeginImageContextWithOptions(newSize,false,UIScreen.main.scale);

        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height));
        let newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return newImage
    }
    
}


extension ST25DVPictureTransferViewController: ST25PasswordViewDelegate {
    func okButtonTapped(pwdValue: Data) {
        self.mST25DVConfigurationPwd = pwdValue
        self.miOSReaderSession.startTagReaderSession()
    }

    func cancelButtonTapped() {
    }
}

extension ST25DVPictureTransferViewController: tagReaderSessionViewControllerDelegate {

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
            self.miOSReaderSession = iOSReaderSession(atagReaderSessionViewControllerDelegate: self)
            continutransferSession()
        } else if errorNFC.code ==  NFCReaderError.readerSessionInvalidationErrorUserCanceled {
            mTransferTask?.stop()
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

    
    // Delegates iOSReaderSession
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
            startTransfer()
        case .stopTransfer:
            stopTransfer()
        case .resume:
            continuTaskTransfer()
        }
    }

}

extension ST25DVPictureTransferViewController: ComStSt25nfcType5St25dvST25DVTransferTask_OnTransferListener {
    
    func transferOnProgress(with progressStatus: jdouble) {
        //print("Transfer in progress")
        //print(progressStatus)
    }
    
    func transferFinished(withBoolean success: jboolean, withLong time: jlong, with buffer: IOSByteArray!) {
        if mDownloadEnable {
            if mDownloadEnable {
                DispatchQueue.main.sync {
                    //print(self.buffer.toHexString().replacingOccurrences(of: " ", with: ""));
                    var bufferData:NSData!
                    bufferData = buffer?.toNSData() as NSData?

                    if buffer != nil {
                          mDownloadImageView.image =  self.resizeImageWithAspect(image: UIImage(data: bufferData as Data)!, ratio: 100)
                    }

                 }
            }
            if mUploadEnable {
                print("finished Upload")
            }

        }
    }
    
    func getDataToWrite() -> IOSByteArray! {
        return nil

    }
}
