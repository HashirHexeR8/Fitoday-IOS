//
//  ListItemDTO.swift
//  Fitoday
//
//  Created by Apple on 05/03/2022.
//

import Foundation

struct listItemDTO
{
    var itemIconName: String = ""
    var itemName: String = ""
    var itemReading: String = ""
    
    init (itemIconName: String, itemName: String, itemReading: String) {
        self.itemIconName = itemIconName
        self.itemName = itemName
        self.itemReading = itemReading
    }
}
