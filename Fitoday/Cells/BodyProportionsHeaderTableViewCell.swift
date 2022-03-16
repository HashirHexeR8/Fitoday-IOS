//
//  BodyProportionsHeaderTableViewCell.swift
//  Fitoday
//
//  Created by Apple on 13/03/2022.
//

import UIKit

class BodyProportionsHeaderTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var leftBodyPropotionsTableView: UITableView!
    @IBOutlet weak var rightBodyPropotionsTableView: UITableView!
    
    private var itemsDataSource: [BodyPropotionsItemDTO] = []
    private var rightItemsDataSource: [BodyPropotionsItemDTO] = []
    private let headerCellIdentifier = "BodyProportionTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        
        leftBodyPropotionsTableView.delegate = self
        leftBodyPropotionsTableView.dataSource = self
        
        rightBodyPropotionsTableView.delegate = self
        rightBodyPropotionsTableView.dataSource = self
        
        let headerCellViewNib = UINib(nibName: headerCellIdentifier, bundle: nil)
        leftBodyPropotionsTableView?.register(headerCellViewNib, forCellReuseIdentifier: headerCellIdentifier)
        rightBodyPropotionsTableView?.register(headerCellViewNib, forCellReuseIdentifier: headerCellIdentifier)
        
        let neckBodyPropotionItem = BodyPropotionsItemDTO(itemName: "Neck", itemValue: "17.5 inch")
        let bustBodyPropotionItem = BodyPropotionsItemDTO(itemName: "Bust", itemValue: "")
        let abdomenBodyPropotionItem = BodyPropotionsItemDTO(itemName: "Abdomen", itemValue: "")
        let leftBicepsBodyPropotionItem = BodyPropotionsItemDTO(itemName: "L: Biceps", itemValue: "")
        let leftThighBodyPropotionItem = BodyPropotionsItemDTO(itemName: "L: Thigh", itemValue: "")
        let leftCalfBodyPropotionItem = BodyPropotionsItemDTO(itemName: "L: Calf", itemValue: "")
        
        itemsDataSource.append(neckBodyPropotionItem)
        itemsDataSource.append(bustBodyPropotionItem)
        itemsDataSource.append(abdomenBodyPropotionItem)
        itemsDataSource.append(leftBicepsBodyPropotionItem)
        itemsDataSource.append(leftThighBodyPropotionItem)
        itemsDataSource.append(leftCalfBodyPropotionItem)
        
        let shoulderBodyPropotionItem = BodyPropotionsItemDTO(itemName: "Shoulder", itemValue: "17.5 inch")
        let waistBodyPropotionItem = BodyPropotionsItemDTO(itemName: "Waist", itemValue: "")
        let hipBodyPropotionItem = BodyPropotionsItemDTO(itemName: "Hip", itemValue: "")
        let rightBicepsBodyPropotionItem = BodyPropotionsItemDTO(itemName: "R: Biceps", itemValue: "")
        let rightThighBodyPropotionItem = BodyPropotionsItemDTO(itemName: "R: Thigh", itemValue: "")
        let rightCalfBodyPropotionItem = BodyPropotionsItemDTO(itemName: "R: Calf", itemValue: "")
        
        rightItemsDataSource.append(shoulderBodyPropotionItem)
        rightItemsDataSource.append(waistBodyPropotionItem)
        rightItemsDataSource.append(hipBodyPropotionItem)
        rightItemsDataSource.append(rightBicepsBodyPropotionItem)
        rightItemsDataSource.append(rightThighBodyPropotionItem)
        rightItemsDataSource.append(rightCalfBodyPropotionItem)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemsDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: headerCellIdentifier) as! BodyProportionTableViewCell
        
        cell.selectionStyle = .none
        
        if tableView == leftBodyPropotionsTableView {
            cell.initCell(itemInfo: itemsDataSource[indexPath.row], isLeftTableView: true)
        }
        else {
            cell.initCell(itemInfo: rightItemsDataSource[indexPath.row], isLeftTableView: false)
        }
        
        return cell
    }
    
}
