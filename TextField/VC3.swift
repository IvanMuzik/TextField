//
//  VC3.swift
//  TextField
//
//  Created by Ivan Muzalevski on 11.12.22.
//

import UIKit

class VC3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    

    @IBOutlet weak var buttonBackOutlet: UIButton!
    @IBOutlet weak var pickerColor: UIPickerView!
    @IBOutlet weak var viewColorOutlet: UIView!
    
    let colorView: [(String, UIColor)] = [("Red",UIColor.red), ("Blue", .blue), ("Green", .green), ("Gray", .gray)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColorOutlet.layer.cornerRadius = 100
       
    }
    
    @IBAction func buttonBackAction(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
    }
 
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorView.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var m = ""
        if pickerView == pickerColor {
            m = colorView[row].0
        }
        return m
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        <#code#>
//    }
}
