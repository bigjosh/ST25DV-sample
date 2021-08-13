//
//  ST25UIViewController.swift
//  NFCTap
//
//  Created by STMICROELECTRONICS on 30/09/2019.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit
import CoreNFC

class ST25UIViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.stDarkBlueColor()
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        // Do any additional setup after loading the view, typically from a nib.
    }

   func isSameTag(uid : Data) -> Bool {
     return (TabItem.TagInfo.mainVC as! ST25TagInformationViewController).uid == uid
    }


}

extension ST25UIViewController: UITextFieldDelegate {
    // UITextFieldDelegate method
    // UITextFieldDelegate method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
     {
        textField .resignFirstResponder()
        return true;
     }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
}
