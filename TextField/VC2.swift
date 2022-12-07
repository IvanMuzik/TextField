//
//  VC2.swift
//  TextField
//
//  Created by Ivan Muzalevski on 5.12.22.
//

import UIKit

class VC2: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var numTelTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "VC2"
        // Do any additional setup after loading the view.
    }
    

//    Он вызывает textFieldShouldReturn(_:)метод, когда пользователь нажимает кнопку возврата на клавиатуре.

}
