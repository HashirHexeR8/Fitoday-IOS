//
//  FreeJumpingModeViewController.swift
//  Fitoday
//
//  Created by Apple on 18/03/2022.
//

import Foundation
import UIKit

class FreeJumpingModeViewController: BaseViewController {
    
    @IBOutlet weak var totalJumpsCounter: UILabel!
    @IBOutlet weak var caloriesBurnedLabel: UILabel!
    @IBOutlet weak var exerciseTimeLabel: UILabel!
    @IBOutlet weak var totalJumpsCounterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalJumpsCounter.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsCounter.font = totalJumpsCounter.font.withSize(93)
        exerciseTimeLabel.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        exerciseTimeLabel.font = exerciseTimeLabel.font.withSize(17)
        caloriesBurnedLabel.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        caloriesBurnedLabel.font = caloriesBurnedLabel.font.withSize(17)
        totalJumpsCounterLabel.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsCounterLabel.font = totalJumpsCounterLabel.font.withSize(17)
    }
    
    @IBAction func onBackButtonClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    
}
