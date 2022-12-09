//
//  ViewController.swift
//  TextField
//
//  Created by Ivan Muzalevski on 5.12.22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginTextfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let login = "I"
    let password = "1"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "registration"
    
        loginTextfield.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextfield {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            textField.resignFirstResponder()
        }
        return true
    }
    

    @IBAction func enterButtonAction(_ sender: UIButton) {
        if loginTextfield.text == login && passwordTextField.text == password {
            let vc2 = storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
            navigationController?.pushViewController(vc2, animated: true)
            }
    }
}


