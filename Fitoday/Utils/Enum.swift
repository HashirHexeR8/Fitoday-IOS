//
//  Enum.swift
//  Fitoday
//
//  Created by Apple on 16/01/2022.
//

import Foundation
import UIKit

public enum introPageType: Int {
    case enjoy = 0
    case idk = 1
    case run = 2
}

public enum exerciseItemType: String {
    case walking = "Walking"
    case running = "Running"
    case cycling = "Cycling"
    case jumpingRopes = "Jumping Ropes"
    
    func getImageIcon(itemType: exerciseItemType) -> String {
        
        switch itemType {
        case .walking:
            return "WalkingIcon"
        case .running:
            return "RunningIcon"
        case .cycling:
            return "CyclingIcon"
        case .jumpingRopes:
            return "JumpRopeIcon"
        }
        
    }
    
    
}


public enum jumpMode: Int {
    case freeJumpMode = 1
    case timerMode = 2
    case countdownMode = 3
    case targetMode = 4
}
