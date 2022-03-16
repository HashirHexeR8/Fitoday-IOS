//
//  ExerciseItemsTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 05/03/2022.
//

import UIKit

class ExerciseItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var exerciseIcon: UIImageView!
    @IBOutlet weak var exerciseItemLabel: UILabel!
    @IBOutlet weak var exerciseItemReading: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initCell(itemDTO: listItemDTO) {
        exerciseIcon?.image = UIImage(named: itemDTO.itemIconName)
        exerciseItemLabel?.text = itemDTO.itemName
        exerciseItemReading?.text = itemDTO.itemReading
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
