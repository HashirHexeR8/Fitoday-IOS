//
//  GoalAcheivedViewController.swift
//  Fitoday
//
//  Created by Apple on 20/03/2022.
//

import Foundation
import UIKit

class GoalAcheivedViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onBackButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
