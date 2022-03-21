//
//  NewWeightGoalSetScreen.swift
//  Fitoday
//
//  Created by Apple on 20/03/2022.
//

import Foundation
import UIKit

class NewWeightGoalSetViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onBackButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onWeightGoalButtonPressed(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "WeightManagement", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "CurrentWeightViewController") as! CurrentWeightViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
