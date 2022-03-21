//
//  HomeHeaderTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 12/03/2022.
//

import UIKit
import KDCircularProgress

class HomeHeaderTableViewCell: UITableViewCell {
    
    var onSettingsButtonClicked: (()->Void)?
    var onNotificationsButtonClicked: (()->Void)?
    
    @IBOutlet weak var circularCalorieView: UIView? = nil
    @IBOutlet weak var circularProgressView: KDCircularProgress? = nil
    @IBOutlet weak var circularStepsProgressView: KDCircularProgress? = nil
    @IBOutlet weak var circularDistanceProgressView: KDCircularProgress? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        circularCalorieView?.layer.cornerRadius = (circularCalorieView?.frame.size.width ?? 350)/2
        circularCalorieView?.clipsToBounds = true
        circularCalorieView?.layer.shadowRadius = 5
        circularCalorieView?.layer.shadowOpacity = 0.3
        
        circularProgressView?.progress = 0.5
        circularStepsProgressView?.progress = 0.5
        circularDistanceProgressView?.progress = 0.35

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onSettingsButtonAction(_ sender: UIButton!) {
        self.onSettingsButtonClicked?()
    }
    
}
