//
//  JumpingRopesLandingHeaderTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 17/03/2022.
//

import UIKit

class JumpingRopesLandingHeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var totalJumpsCount: UILabel!
    @IBOutlet weak var totalJumpsCalloriesBurned: UILabel!
    @IBOutlet weak var totalJumpsTime: UILabel!
    @IBOutlet weak var totalJumpsCountHistory: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        totalJumpsCount.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsCount.font = totalJumpsCount.font.withSize(56)
        totalJumpsCalloriesBurned.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsCalloriesBurned.font = totalJumpsCalloriesBurned.font.withSize(17)
        totalJumpsTime.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsTime.font = totalJumpsTime.font.withSize(17)
        totalJumpsCountHistory.font = UIFont(name: "BebasNeue-Regular", size: 64.0)
        totalJumpsCountHistory.font = totalJumpsCountHistory.font.withSize(17)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
