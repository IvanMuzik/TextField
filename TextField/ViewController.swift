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
            if let vc2 = storyboard?.instantiateViewController(withIdentifier: "VC2") as? VC2{
                present(vc2, animated: true)
            }
    }
}
}
