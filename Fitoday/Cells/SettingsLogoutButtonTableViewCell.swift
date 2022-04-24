//
//  SettingsLogoutButtonTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 01/03/2022.
//

import UIKit

class SettingsLogoutButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var btnLogout: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnLogout.titleLabel?.font = UIFont(name: "Comfortaa-Bold", size: 18)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
