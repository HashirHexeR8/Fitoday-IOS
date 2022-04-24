//
//  WeightManagementBottomTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 14/03/2022.
//

import UIKit

class WeightManagementBottomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnUpdateGoal: UIButton!
    @IBOutlet weak var btnEditGoal: UIButton!
    @IBOutlet weak var btnShopNow: UIButton!
    
    var onEditGoalClick: (() -> Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnEditGoal.titleLabel?.font = UIFont(name: "Comfortaa-Bold", size: 13)
        btnUpdateGoal.titleLabel?.font = UIFont(name: "Comfortaa-Bold", size: 13)
        btnShopNow.titleLabel?.font = UIFont(name: "Comfortaa-Bold", size: 13)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onEditGoalPressed(_ sender: UIButton) {
        self.onEditGoalClick?()
    }
    
}
