//
//  ConnectedDeviceCollectionViewCell.swift
//  Fitoday
//
//  Created by Apple on 04/03/2022.
//

import UIKit

class ConnectedDeviceCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var connectedDeviceIconViewContainer: UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        connectedDeviceIconViewContainer?.layer.cornerRadius = (connectedDeviceIconViewContainer?.frame.size.width ?? 350)/2
        connectedDeviceIconViewContainer?.clipsToBounds = true
        // Initialization code
    }
    
    func initCell() {
        
    }

}
