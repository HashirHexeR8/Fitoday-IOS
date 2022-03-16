//
//  SettingsItemCellView.swift
//  Fitoday
//
//  Created by Apple on 01/03/2022.
//

import UIKit

class SettingsItemCellView: UITableViewCell {
    
    @IBOutlet weak var mainView: UIView?
    @IBOutlet weak var itemTextLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func initCell(itemText: String) {
        itemTextLabel?.text = itemText
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
