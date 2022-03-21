//
//  SetTargetViewController.swift
//  Fitoday
//
//  Created by Apple on 18/03/2022.
//

import Foundation
import UIKit


class SetTargetViewController: BaseViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var setTargetBackButton: UIButton!
    @IBOutlet weak var setTargetButton: UIView!
    @IBOutlet weak var targetPickerView: UIPickerView!
    
    private var targetList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        targetPickerView.delegate = self
        targetPickerView.dataSource = self
        
        for i in 1...1000 {
            targetList.append(String(i))
        }
        
        let setTargetButtonClickGesture = UITapGestureRecognizer(target: self, action: #selector(self.setTargetButtonClicked(_:)))
        self.setTargetButton.isUserInteractionEnabled = true
        self.setTargetButton.addGestureRecognizer(setTargetButtonClickGesture)
    }
    
    @objc func setTargetButtonClicked(_ sender: UITapGestureRecognizer) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "JumpingRopes", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "TargetModeViewController")
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return targetList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let customView = SelectedRowCustomView()
        customView.label.font = UIFont(name: "BebasNeue-Regular", size: 90.0)
        customView.label.font = customView.label.font.withSize(90)
        customView.label.text = targetList[row]
        return customView
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let view = pickerView.view(forRow: row, forComponent: component) as! SelectedRowCustomView
        view.topIndicator.isHidden = false
        view.bottomIndicator.isHidden = false
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(130)
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return CGFloat(130)
    }
    
    @IBAction func onBackButtonClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
