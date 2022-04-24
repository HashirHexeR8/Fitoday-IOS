//
//  UserProfileTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 02/03/2022.
//

import UIKit

class UserProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileItemTitle: UIView?
    @IBOutlet weak var profileItemTitleLabel: UILabel?
    @IBOutlet weak var firstItemTitleIcon: UIImageView?
    @IBOutlet weak var firstItemTitleKey: UILabel?
    @IBOutlet weak var firstItemValue: UILabel?
    @IBOutlet weak var secondItemTitleIcon: UIImageView?
    @IBOutlet weak var secondItemTitleKey: UILabel?
    @IBOutlet weak var secondItemValue: UILabel?
    @IBOutlet weak var profileItemSeparator: UIView?
    @IBOutlet weak var profileFirstItemValueContainer: UIView!
    @IBOutlet weak var profileSecondItemValueContainer: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Shadow Color and Radius
        self.profileFirstItemValueContainer.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.profileFirstItemValueContainer.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.profileFirstItemValueContainer.layer.shadowOpacity = 1.0
        self.profileFirstItemValueContainer.layer.shadowRadius = 0.0
        self.profileFirstItemValueContainer.layer.masksToBounds = false
        
        self.profileSecondItemValueContainer.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.profileSecondItemValueContainer.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.profileSecondItemValueContainer.layer.shadowOpacity = 1.0
        self.profileSecondItemValueContainer.layer.shadowRadius = 0.0
        self.profileSecondItemValueContainer.layer.masksToBounds = false
        // Do any additional setup after loading the view.
        // Initialization code
    }
    
    func initCell(infoDTO: UserProfileInfoDTO) {
        profileItemTitle?.isHidden = !infoDTO.isTitleItem
        profileItemTitleLabel?.text = infoDTO.profileItemTitle
        firstItemTitleIcon?.isHidden = !infoDTO.isItemIconRequired
        firstItemTitleKey?.text = infoDTO.profileFirstItemKey
        firstItemValue?.text = infoDTO.profileFirstItemValue
        secondItemTitleIcon?.isHidden = !infoDTO.isItemIconRequired
        secondItemTitleKey?.text = infoDTO.profileSecondItemKey
        secondItemValue?.text = infoDTO.profileSecondItemValue
        profileItemSeparator?.isHidden = !infoDTO.isLastItem
        
        if infoDTO.profileFirstItemIcon != nil {
            firstItemTitleIcon?.image = infoDTO.profileFirstItemIcon
        }
        if infoDTO.profileSecondItemIcon != nil {
            secondItemTitleIcon?.image = infoDTO.profileSecondItemIcon
        }

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
