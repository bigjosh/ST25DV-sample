//
//  readTagInfo.swift
//  ST25NFCAppClip
//
//  Created by STMICROELECTRONICS on 23/09/2020.
//  Copyright © 2020 STMicroelectronics. All rights reserved.
//

import Foundation
import UIKit
import StoreKit
import CoreNFC


class readTagInfo: NSObject {
    private var mVC:UINavigationController
    
    // Reference the NFC session
    private var tagSession: NFCTagReaderSession!
    
    // Reference to TagInfoType5
    private var tagInfoType5:TagInfoType5?
    private var isValidCCFileType5:Bool = false

    init(aVc:UINavigationController) {
        mVC = aVc
    }
    
 
   func startSession() {
        guard NFCNDEFReaderSession.readingAvailable else {
            let alertController = UIAlertController(
                title: "Scanning Not Supported",
                message: "This device doesn't support tag scanning.",
                preferredStyle: .alert
            )
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.mVC.present(alertController, animated: true, completion: nil)
            return

    }
        
    tagSession = NFCTagReaderSession(pollingOption: [.iso15693], delegate: self, queue: nil)
    #if APPCLIP
        tagSession?.alertMessage = "Hold your smartphone near an AppClip NFC Tag"
    #else
        tagSession?.alertMessage = "Hold your smartphone near a ST25 NFC Tag"
    #endif
    
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

}

extension readTagInfo:NFCTagReaderSessionDelegate {
    
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
            return
        }
        
        session.connect(to: tags.first!) { (error: Error?) in
            if error != nil {
                session.invalidate(errorMessage: "Connection error. Please try again.")
                return
            }
            let iOSIso15693TagTmp : iOSIso15693 = iOSIso15693.init(iso15693Tag, session: session)
            
            let iOSReaderInterfaceTmp:iOSRFReaderInterface = iOSRFReaderInterface(aNFCTag: tags.first!, aSession: session)

            self.tagInfoType5 = TagInfoType5(aNFCTag:tags.first!, aNFCISO15693Tag: iso15693Tag, aiOSReaderInterface: iOSReaderInterfaceTmp)
            UIHelper.UI() {
                // Try/Catch for Exceptions from OBJC calls
                SwiftTryCatch.try({
                    self.isValidCCFileType5 = self.tagInfoType5!.tagInformationProcess()
                    if (self.isValidCCFileType5 == true){
                        session.invalidate()
                    }else{
                        session.invalidate(errorMessage: "Error while processig CCFile")
                    }
                    #if !APPCLIP
                    self.tagInfoType5?.processReadNdef()
                    #endif
                   // Code you want to be delayed
                    self.setupTagTabBarMenuForTag(
                        pdt: self.tagInfoType5!.mProductId,
                        tagPropertiesInformationTableModel:self.tagInfoType5!.mTagPropertiesInformationTableModel,
                        tagSystemInfo: self.tagInfoType5!.mTagSystemInfo)
                   }
                    , catch: { (error) in
                        // Code you want to be delayed
                        if (self.tagInfoType5!.mUID == mUIDUnTraceable){
                            self.setupTagTabBarMenuForTag(
                             pdt: self.tagInfoType5!.mProductId,
                             tagPropertiesInformationTableModel: self.tagInfoType5!.mTagPropertiesInformationTableModel,
                             tagSystemInfo: self.tagInfoType5!.mTagSystemInfo)
                        
                            session.invalidate()
                        }else{
                            session.invalidate(errorMessage: "Command failed: \(error!.description)")
                        }

                    }
                    , finallyBlock: {
                        session.invalidate(errorMessage: "Error while reading Tag")
                    })
                }
        }
    }
    
    func setupTagTabBarMenuForTag(pdt : ProductID,tagPropertiesInformationTableModel:TagInfoGenericModel,tagSystemInfo:TagInfo?) {
        
        // No customizable Menu in AppClip
        #if !APPCLIP
        let tabBar = TagTabBarController()
        let myTagMenu = tabBar.performTagMenuDiscovery(productId: (self.tagInfoType5?.mTagSystemInfo!.getProductID())!)
        self.mVC.tabBarController!.customizableViewControllers = []
        tabBar.performTagTabBarMenu(menu: myTagMenu, tabBarController: self.mVC.tabBarController!)
        #endif

        let sections = [Category(name:TagInfoGenericModel.infoFileSectionName, items: tagPropertiesInformationTableModel.tagInfo), Category(name:TagInfoGenericModel.systemFileSectionName, items: tagPropertiesInformationTableModel.systemFileInfo), Category(name:TagInfoGenericModel.ccFileSectionName, items: tagPropertiesInformationTableModel.ccFileInfo)]
    
        // No TabBarController in AppClip
        #if !APPCLIP
        let tabBarController : UITabBarController =  self.mVC.tabBarController!
        tabBarController.selectedIndex = 0

        let navigationController  = tabBarController.selectedViewController as! UINavigationController
        let controllers = navigationController.viewControllers // will give array
        let tagInfoController:ST25TagInformationViewController = (controllers[0] as? ST25TagInformationViewController)!
        #else
        let tagInfoController:ST25TagInformationViewController = UIStoryboard(name: "ST25TagInformation", bundle: nil).instantiateViewController(withIdentifier: "ST25TagInformationViewController") as! ST25TagInformationViewController
               
        #endif
        
        tagInfoController.sections = sections
        tagInfoController.productId = tagSystemInfo!.getProductID()
        tagInfoController.uid = tagSystemInfo?.uid
        tagInfoController.mTagSystemInfo = tagSystemInfo

        #if APPCLIP
        self.mVC.present(tagInfoController, animated: true, completion: nil)
        #endif
        
        #if !APPCLIP
        if (!self.isValidCCFileType5){
            let alert = UIAlertController(title: "CC File", message: "Invalid CC File. Please, Enter valid values before continuing...", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Edit CC File", style: .default, handler: { action in
                let ccFileType5Controller:Type5CCFileViewController = UIStoryboard(name: "Type5CCFile", bundle: nil).instantiateViewController(withIdentifier: "Type5CCFileViewController") as! Type5CCFileViewController
                self.mVC.present(ccFileType5Controller, animated: true, completion: nil)
            }))
            tagInfoController.present(alert, animated: true, completion: nil)
        }
        #endif
    }
}
