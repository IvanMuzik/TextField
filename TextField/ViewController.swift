//
//  ViewController.swift
//  TextField
//
//  Created by Ivan Muzalevski on 5.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let login = "I"
    let password = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterButtonAction(_ sender: UIButton) {
        if loginTextfield.text == login && passwordTextField.text == password {
            
        }
    }
    
}

