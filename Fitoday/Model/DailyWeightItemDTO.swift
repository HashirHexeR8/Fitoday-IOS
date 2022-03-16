//
//  DailyWeightItemDTO.swift
//  Fitoday
//
//  Created by Apple on 15/03/2022.
//

import Foundation

struct DailyWeightItemDTO {
    
    init (day: String, value: String, separatorVisibility: Bool) {
        self.weightDay = day
        self.weightValue = value
        self.shouldShowSeparator = separatorVisibility
    }
    
    var weightDay = ""
    var weightValue = ""
    var shouldShowSeparator = true
}
