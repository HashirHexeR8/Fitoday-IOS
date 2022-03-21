//
//  TimerModeViewController.swift
//  Fitoday
//
//  Created by Apple on 18/03/2022.
//

import Foundation
import UIKit

class TimerModeViewController: BaseViewController {
    
    @IBOutlet weak var timerTextLabel: UILabel!
    @IBOutlet weak var timerStartButton: UIButton!
    @IBOutlet weak var timerStopButton: UIButton!
    @IBOutlet weak var timerModeBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerTextLabel.font = UIFont(name: "BebasNeue-Regular", size: 63.0)
        timerTextLabel.font = timerTextLabel.font.withSize(63)
    }
    
    @IBAction func onBackButtonClick(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
