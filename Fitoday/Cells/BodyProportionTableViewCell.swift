//
//  BodyProportionTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 14/03/2022.
//

import UIKit

class BodyProportionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bodyProportionItemParentView: UIView!
    @IBOutlet weak var bodyProportionName: UILabel!
    @IBOutlet weak var bodyProportionKeyValueView: UIView!
    @IBOutlet weak var bodyProportionItemKey: UILabel!
    @IBOutlet weak var bodyProportionItemValue: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(itemInfo: BodyPropotionsItemDTO, isLeftTableView: Bool) {
        
        
        if itemInfo.bodyPropotionsMeasurementValue.isEmpty {
            bodyProportionKeyValueView.isHidden = true
            bodyProportionName.isHidden = false
            bodyProportionName.text = itemInfo.bodyProportionItemName
        }
        else {
            bodyProportionKeyValueView.isHidden = false
            bodyProportionName.isHidden = true
            bodyProportionItemKey.text = itemInfo.bodyProportionItemName
            bodyProportionItemValue.text = itemInfo.bodyPropotionsMeasurementValue
        }
    }
    
}
