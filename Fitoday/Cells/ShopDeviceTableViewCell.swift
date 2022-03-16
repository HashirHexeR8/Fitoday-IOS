//
//  ShopDeviceTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 03/03/2022.
//

import UIKit

class ShopDeviceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemIconImage: UIImageView?
    @IBOutlet weak var itemNameLabel: UILabel?
    @IBOutlet weak var itemDescriptionLabel: UILabel?
    @IBOutlet weak var itemPriceLabel: UILabel?
    @IBOutlet weak var itemDiscountLabel: UILabel?
    @IBOutlet weak var itemShopButton: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCell(itemInfo: ShopDeciceItemInfoDTO) {
        itemNameLabel?.text = itemInfo.itemName
        itemDescriptionLabel?.text = itemInfo.itemDescription
        itemPriceLabel?.text = itemInfo.itemPrice
        itemDiscountLabel?.text = itemInfo.itemDiscount
        itemIconImage?.image = UIImage(named: itemInfo.itemIcon)
    }
    
}
