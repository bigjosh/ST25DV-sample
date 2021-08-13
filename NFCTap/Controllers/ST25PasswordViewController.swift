//
//  ST25PasswordViewController.swift
//  ST25NFCApp
//
//  Created by STMicroelectronics on 10/25/19.
//  Copyright © 2019 STMicroelectronics. All rights reserved.
//

import UIKit


protocol ST25PasswordViewDelegate: class {
    func okButtonTapped(pwdValue: Data)
    func cancelButtonTapped()
}

extension ST25PasswordViewController : UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
          guard CharacterSet(charactersIn: "0123456789AaBbCcDdEeFf").isSuperset(of: CharacterSet(charactersIn: string)) else {
              return false
          }
        return range.location < 2
    }
}

class ST25PasswordViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
   
    @IBOutlet var Byte0TextField: UITextField!
    @IBOutlet var Byte1TextField: UITextField!
    @IBOutlet var Byte2TextField: UITextField!
    @IBOutlet var Byte3TextField: UITextField!
    
    @IBOutlet weak var byte4TextField: UITextField!
    @IBOutlet weak var byte5TextField: UITextField!
    @IBOutlet weak var byte6TextField: UITextField!
    @IBOutlet weak var byte7TextField: UITextField!
    
    @IBOutlet weak var byte4To7LabelsStackView: UIStackView!
    @IBOutlet weak var byte4To7FieldsStackView: UIStackView!
    
    @IBOutlet var passwordView: UIView!
   
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
  
    @IBAction func onTapCancelButton(_ sender: Any) {
        Byte0TextField.resignFirstResponder()
        delegate?.cancelButtonTapped()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onTapOkButton(_ sender: Any) {
        Byte0TextField.resignFirstResponder()
        
        if checkPasswordValidity() == true {
            var pwdString:String!
            if numberOfBytes == 8 {
                let first4Bytes = Byte3TextField.text!+Byte2TextField.text!+Byte1TextField.text!+Byte0TextField.text!
                let next4bytes = byte7TextField.text!+byte6TextField.text!+byte5TextField.text!+byte4TextField.text!
                pwdString = next4bytes + first4Bytes

            } else {
                pwdString = Byte3TextField.text!+Byte2TextField.text!+Byte1TextField.text!+Byte0TextField.text!
            }
            let pwdData:Data = (ComStSt25sdkHelper.convertHexStringToByteArray(with: pwdString)?.toNSData())!
            
            delegate?.okButtonTapped(pwdValue: pwdData)
            self.dismiss(animated: true, completion: nil)
        }else{
            self.alertWindow(message : "Password NOT Valid")
        }
    }
    
    
    internal var delegate: ST25PasswordViewDelegate?
    internal var titleView:String = ""
    internal var messageView:String  = ""
    internal var numberOfBytes:Int = 4

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Byte0TextField.becomeFirstResponder()
        configureBytesTextFieldUpto4Bytes()
        if numberOfBytes == 8 {
            configureBytesTextFieldFrom4BytesTo7Bytes()
        } else {
            // default 4
            numberOfBytes = 4
            // hide the 4 bytes
            hideBytesTextFieldFrom4BytesTo7Bytes()
        }
        
        titleLabel.text = titleView
        titleLabel.sizeToFit()
        titleLabel.adjustsFontSizeToFitWidth = true
        messageLabel.text = messageView
    }
  

    private func configureBytesTextFieldUpto4Bytes() {
        Byte0TextField.isSecureTextEntry = true
        Byte0TextField.delegate = self
        
        Byte1TextField.delegate = self
        Byte1TextField.isSecureTextEntry = true
        
        Byte2TextField.delegate = self
        Byte2TextField.isSecureTextEntry = true
        
        Byte3TextField.delegate = self
        Byte3TextField.isSecureTextEntry = true
    }
    private func configureBytesTextFieldFrom4BytesTo7Bytes() {
        byte4TextField.isSecureTextEntry = true
        byte4TextField.delegate = self
        
        byte5TextField.delegate = self
        byte5TextField.isSecureTextEntry = true
        
        byte6TextField.delegate = self
        byte6TextField.isSecureTextEntry = true
        
        byte7TextField.delegate = self
        byte7TextField.isSecureTextEntry = true
    }
    private func hideBytesTextFieldFrom4BytesTo7Bytes() {
//        byte4TextField.isHidden = false
//        byte5TextField.isHidden = false
//        byte6TextField.isHidden = false
//        byte7TextField.isHidden = false
        byte4To7LabelsStackView.isHidden = true
        byte4To7FieldsStackView.removeFromSuperview()
        self.view.layoutIfNeeded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()
        animateView()
    }
    
    func  setTitle(_ aTitle:String){
        titleView = aTitle
    }
    
    func  setMessage(_ aMessage:String){
       messageView = aMessage
    }

    func  setNumberOfBytes(_ aNumerOfBytes:Int){
        numberOfBytes = aNumerOfBytes
    }
    
    private func setupView() {
        passwordView.layer.cornerRadius = 15
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    }
    
    private func animateView() {
        passwordView.alpha = 0;
        self.passwordView.frame.origin.y = self.passwordView.frame.origin.y + 100
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            self.passwordView.alpha = 1.0;
            self.passwordView.frame.origin.y = self.passwordView.frame.origin.y - 100
        })
    }
    
    private func checkPasswordValidity() -> Bool {
        if numberOfBytes == 8 {
            return (check4FirstBytes() && checkBytes4To7())
        } else {
            //  the 4 bytes
            return check4FirstBytes()
        }

    }
    
    private func check4FirstBytes() -> Bool {
        // Check that every field are not empty
        if (Byte0TextField.text!.isEmpty || Byte1TextField.text!.isEmpty || Byte2TextField.text!.isEmpty || Byte3TextField.text!.isEmpty) {
            return false
        }
        
        // Check that every field have good size
        if ((Byte0TextField.text!.count != 2) || (Byte1TextField.text!.count != 2 )  || (Byte2TextField.text!.count != 2) || (Byte3TextField.text!.count != 2)) {
            return false
        }
        
        return true
    }
    private func checkBytes4To7() -> Bool {
        // Check that every field are not empty
        if (byte4TextField.text!.isEmpty || byte5TextField.text!.isEmpty || byte6TextField.text!.isEmpty || byte7TextField.text!.isEmpty) {
            return false
        }
        
        // Check that every field have good size
        if ((byte4TextField.text!.count != 2) || (byte5TextField.text!.count != 2 )  || (byte6TextField.text!.count != 2) || (byte7TextField.text!.count != 2)) {
            return false
        }
        
        return true
    }
    // Alert Error Windows
    private func alertWindow(message : String){
        let alert = UIAlertController(title: "ST25 Password",
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .destructive, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }

}
