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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initCell(infoDTO: UserProfileInfoDTO) {
        profileItemTitle?.isHidden = !infoDTO.isTitleItem
        profileItemTitleLabel?.text = infoDTO.profileItemTitle
        firstItemTitleIcon?.isHidden = infoDTO.profileFirstItemIcon == nil
        firstItemTitleKey?.text = infoDTO.profileFirstItemKey
        firstItemValue?.text = infoDTO.profileFirstItemValue
        secondItemTitleIcon?.isHidden = infoDTO.profileSecondItemIcon == nil
        secondItemTitleKey?.text = infoDTO.profileSecondItemKey
        secondItemValue?.text = infoDTO.profileSecondItemValue
        profileItemSeparator?.isHidden = !infoDTO.isLastItem

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
