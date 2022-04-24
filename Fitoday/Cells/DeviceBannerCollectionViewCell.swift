//
//  DeviceBannerCollectionViewCell.swift
//  Fitoday
//
//  Created by Apple on 13/03/2022.
//

import UIKit

class DeviceBannerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var deviceName: UILabel?
    @IBOutlet weak var deviceDescription: UILabel?
    @IBOutlet weak var deviceIcon: UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initCell(itemInfo: ShopDeciceItemInfoDTO) {
        deviceName?.text = itemInfo.itemName
        deviceDescription?.text = itemInfo.itemDescription
        deviceIcon?.image = UIImage(named: itemInfo.itemIcon)
    }

}
