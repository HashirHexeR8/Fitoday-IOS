//
//  ShopDeviceItemInfoDTO.swift
//  Fitoday
//
//  Created by Apple on 03/03/2022.
//

import Foundation
import UIKit

struct ShopDeciceItemInfoDTO{
    
    init (itemName: String, itemDescription: String, itemPrice: String, itemDiscount: String, itemImageName: String) {
        self.itemName = itemName
        self.itemDescription = itemDescription
        self.itemPrice = itemPrice
        self.itemDiscount = itemDiscount
        self.itemIcon = itemImageName
    }
    
    var itemName: String = ""
    var itemDescription: String = ""
    var itemPrice: String = ""
    var itemDiscount: String = ""
    var itemIcon: String = ""
}
