//
//  ViewController.swift
//  ST25NFCAppClip
//
//  Created by STMicroelectronics on 15/09/2020.
//  Copyright © 2020 STMicroelectronics. All rights reserved.
//

import UIKit
import StoreKit
import CoreNFC


class ViewController: ST25UIViewController {
    
    // Reference the readTagInfo class
    private var mReadTagInfo:readTagInfo!
    
    // Reference the NFC session
    private var tagSession: NFCTagReaderSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func downloadFullVersion(_ sender: Any) {
        guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }
        let config = SKOverlay.AppClipConfiguration(position: .bottomRaised)
        let overlay = SKOverlay(configuration: config)
        overlay.delegate = self
        overlay.present(in: scene)
    }
    
    @IBAction func readTag(_ sender: UIButton) {
        mReadTagInfo = readTagInfo(aVc: self.navigationController!)
        mReadTagInfo.startSession()
    }
 }

    
extension ViewController : SKOverlayDelegate {
    
    func storeOverlayDidFailToLoad(_ overlay: SKOverlay, error: Error) {
        print("storeOverlayDidFailToLoad")
    }
    
    func storeOverlayWillStartDismissal(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext) {
        print("storeOverlayWillStartDismissal")
       
    }
    
    func storeOverlayWillStartPresentation(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext) {
        print("storeOverlayWillStartPresentation")
    }
    
    func storeOverlayDidFinishDismissal(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext) {
        print("storeOverlayDidFinishDismissal")
    }
    
    func storeOverlayDidFinishPresentation(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext) {
        print("storeOverlayDidFinishPresentation")
    }

}

