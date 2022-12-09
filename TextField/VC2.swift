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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "VC2"
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        numTelTextField.delegate = self
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



}
