//
//  VC2.swift
//  TextField
//
//  Created by Ivan Muzalevski on 5.12.22.
//

import UIKit

class VC2: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var emailUser = ["@gmail.com", "@mail.ru", "@yandex.ru"]
    var numberTel = ["7703946", "8146793", "6143632"]
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var numTelTextField: UITextField!
    @IBOutlet weak var hiddenButtonSwichOutlet: UISwitch!
    @IBOutlet weak var onOffButtonOutlet: UISwitch!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    let pickerEmail = UIPickerView()
    let pickerNumTel = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "VC2"
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        numTelTextField.delegate = self
        pickerEmail.delegate = self
        pickerEmail.dataSource = self
        pickerNumTel.dataSource = self
        pickerNumTel.delegate = self
        
        emailTextField.inputView = pickerEmail
        numTelTextField.inputView = pickerNumTel
        
        self.hiddenButtonSwichOutlet.isOn = false
        self.onOffButtonOutlet.isOn = false
        nameTextField.addTarget(self, action: #selector(alertNameUser), for: .allEvents)
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
    @objc func alertNameUser() {
        
        let alert = UIAlertController(title: "Введите свое имя", message: nil, preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Ok", style: .default) {action in
            let tf = alert.textFields?.first
            self.nameTextField.text = tf?.text
            
        }
        alert.addTextField()
        alert.addAction(actionAlert)
        present(alert, animated: true)
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var pik = 0
        if pickerView == pickerEmail{
            pik = emailUser.count
        } else if pickerView == pickerNumTel{
            pik = numberTel.count
        }
        return pik
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var pik = ""
        if pickerView == pickerEmail{
            pik = emailUser[row]
        }else if pickerView == pickerNumTel{
            pik = numberTel[row]
        }
        return pik
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerEmail{
        emailTextField.text = emailUser[row]
        emailTextField.resignFirstResponder()
        } else if pickerView == pickerNumTel{
            numTelTextField.text = numberTel[row]
            numTelTextField.resignFirstResponder()
        }
}

}
