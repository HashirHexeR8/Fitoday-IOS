//
//  TargetModeViewController.swift
//  Fitoday
//
//  Created by Apple on 18/03/2022.
//

import Foundation
import UIKit

class TargetModeViewController: BaseViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var topBarTitleLabel: UILabel!
    @IBOutlet weak var totalJumpsCounter: UILabel!
    @IBOutlet weak var targetJumpsCounter: UILabel!
    @IBOutlet weak var caloriesBurnedLabel: UILabel!
    @IBOutlet weak var totalExerciseTimeLabel: UILabel!
    @IBOutlet weak var targetModeLabel: UILabel!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        targetJumpsCounter.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        targetJumpsCounter.font = targetJumpsCounter.font.withSize(93)
        totalExerciseTimeLabel.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalExerciseTimeLabel.font = totalExerciseTimeLabel.font.withSize(93)
        caloriesBurnedLabel.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        caloriesBurnedLabel.font = caloriesBurnedLabel.font.withSize(17)
        totalJumpsCounter.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsCounter.font = totalJumpsCounter.font.withSize(17)
    }
    
    @IBAction func onBackButtonClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
