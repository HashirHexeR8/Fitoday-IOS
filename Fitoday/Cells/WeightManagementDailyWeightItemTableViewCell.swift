//
//  WeightManagementDailyWeightItemTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 15/03/2022.
//

import UIKit

class WeightManagementDailyWeightItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var weightDayText: UILabel!
    @IBOutlet weak var weightValueText: UILabel!
    @IBOutlet weak var weightItemSeparator: UIView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initCell(itemInfo: DailyWeightItemDTO) {
        weightDayText.text = itemInfo.weightDay
        weightValueText.text = itemInfo.weightValue
        if itemInfo.shouldShowSeparator {
            weightItemSeparator.isHidden = false
        }
        else {
            weightItemSeparator.isHidden = true
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
