//
//  UserProfileInfoDTO.swift
//  Fitoday
//
//  Created by Apple on 02/03/2022.
//

import Foundation
import UIKit

struct UserProfileInfoDTO {
    
    init (itemTitle: String, firstItemKey: String, firstItemValue: String, secondItemKey: String, secondItemValue: String, firstItemIcon: UIImage?, secondItemIcon: UIImage?, itemIconReq: Bool, lastItem: Bool, titleItem: Bool) {
        
        self.profileItemTitle = itemTitle
        self.profileFirstItemKey = firstItemKey
        self.profileFirstItemValue = firstItemValue
        self.profileSecondItemKey = secondItemKey
        self.profileSecondItemValue = secondItemValue
        self.profileFirstItemIcon = firstItemIcon
        self.profileSecondItemIcon = secondItemIcon
        self.isItemIconRequired = itemIconReq
        self.isLastItem = lastItem
        self.isTitleItem = titleItem
        
    }
    
    var profileItemTitle: String = ""
    var profileFirstItemKey: String = ""
    var profileFirstItemValue: String = ""
    var profileSecondItemKey: String = ""
    var profileSecondItemValue: String = ""
    var profileFirstItemIcon: UIImage? = nil
    var profileSecondItemIcon: UIImage? = nil
    var isItemIconRequired: Bool = true
    var isLastItem: Bool = false
    var isTitleItem: Bool = true
}
