//
//  CurrentWeightViewController.swift
//  Fitoday
//
//  Created by Apple on 20/03/2022.
//

import Foundation
import UIKit


class CurrentWeightViewController: BaseViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var weightPicker: UIPickerView!
    
    private var weightValue: [String] = []
    private var weightPointValue: [String] = []
    private var weightUnitValue: [String] = ["lbs", "kg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weightPicker.delegate = self
        weightPicker.dataSource = self
        
        for i in 1...200 {
            weightValue.append(String(i))
        }
        
        for i in 1...9 {
            weightPointValue.append(".\(String(i))")
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let customView = WeightSelectedRowCustomView()
        if component == 0 {
            customView.label.text = weightValue[row]
        }
        else if component == 1 {
            customView.label.text = weightPointValue[row]
        }
        else {
            customView.label.text = weightUnitValue[row]
        }
        return customView
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return weightValue.count
        }
        else if component == 1 {
            return weightPointValue.count
        }
        else {
            return weightUnitValue.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(50)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let view = pickerView.view(forRow: row, forComponent: component) as! WeightSelectedRowCustomView
        view.topIndicator.isHidden = false
        view.bottomIndicator.isHidden = false
    }
    
    @IBAction func onBackButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onConfirmButtonPressed(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "WeightManagement", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "GoalWeightViewController") as! GoalWeightViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
