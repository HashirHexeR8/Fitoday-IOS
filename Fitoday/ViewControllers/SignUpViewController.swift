//
//  SignUpViewController.swift
//  Fitoday
//
//  Created by Apple on 28/01/2022.
//

import UIKit

class SignUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let months: [String] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    
    @IBOutlet private weak var monthPicker: UIPickerView!
    @IBOutlet private weak var dayPicker: UIPickerView!
    @IBOutlet private weak var yearPicker: UIPickerView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        monthPicker.delegate = self
        monthPicker.dataSource = self
        dayPicker.delegate = self
        dayPicker.dataSource = self
        yearPicker.delegate = self
        yearPicker.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return months[row]
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
