//
//  BodyProportionsBottomCellView.swift
//  Fitoday
//
//  Created by Apple on 13/03/2022.
//

import UIKit

class BodyProportionsBottomCellView: UITableViewCell {
    
    @IBOutlet weak var btnBodyProportionsSave: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnBodyProportionsSave.titleLabel?.font = UIFont(name: "Comfortaa-Bold", size: 16)

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
