//
//  BodyProportionsItemDTO.swift
//  Fitoday
//
//  Created by Apple on 14/03/2022.
//

import Foundation

struct BodyPropotionsItemDTO {
    
    init (itemName: String, itemValue: String) {
        bodyProportionItemName = itemName
        bodyPropotionsMeasurementValue = itemValue
    }
    
    var bodyProportionItemName: String = ""
    var bodyPropotionsMeasurementValue: String = ""
}
