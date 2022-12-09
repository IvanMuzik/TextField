//
//  VC2.swift
//  TextField
//
//  Created by Ivan Muzalevski on 5.12.22.
//

import UIKit

class VC2: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var numTelTextField: UITextField!
    @IBOutlet weak var hiddenButtonSwichOutlet: UISwitch!
    @IBOutlet weak var onOffButtonOutlet: UISwitch!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "VC2"
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        numTelTextField.delegate = self
        
        self.hiddenButtonSwichOutlet.isOn = false
        self.onOffButtonOutlet.isOn = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField{
            textField.resignFirstResponder()
            emailTextField.becomeFirstResponder()
        } else if textField == emailTextField {
            textField.resignFirstResponder()
            numTelTextField.becomeFirstResponder()
        }else if textField == numTelTextField{
            textField.resignFirstResponder()
        }
        
        return true
    }

    @IBAction func hiddenButtonAction(_ sender: UISwitch) {
        if sender.isOn{
        buttonOutlet.isHidden = true
        } else {
            buttonOutlet.isHidden = false
        }
    }
    @IBAction func onOffButtonAction(_ sender: UISwitch) {
        if sender.isOn{
            buttonOutlet.isEnabled = true
        } else {
            buttonOutlet.isEnabled = false
        }
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
    }
    
}

