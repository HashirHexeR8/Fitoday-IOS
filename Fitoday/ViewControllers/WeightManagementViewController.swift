//
//  WeightManagementViewController.swift
//  Fitoday
//
//  Created by Apple on 15/03/2022.
//

import UIKit

class WeightManagementViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let headerCellIdentifier = "WeightManagementHeaderTableViewCell"
    private let bottomCellIdentifier = "WeightManagementBottomTableViewCell"
    private let weightItemCellIdentifier = "WeightManagementDailyWeightItemTableViewCell"
    
    @IBOutlet weak var weightManagementTableView: UITableView!
    
    var dailyWeightItemsList: [DailyWeightItemDTO] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.weightManagementTableView?.delegate = self
        self.weightManagementTableView?.dataSource = self
        
        let headerNib = UINib(nibName: headerCellIdentifier, bundle: nil)
        weightManagementTableView?.register(headerNib, forCellReuseIdentifier: headerCellIdentifier)
        let bottomNib = UINib(nibName: bottomCellIdentifier, bundle: nil)
        weightManagementTableView?.register(bottomNib, forCellReuseIdentifier: bottomCellIdentifier)
        let dailyWightItemNib = UINib(nibName: weightItemCellIdentifier, bundle: nil)
        weightManagementTableView?.register(dailyWightItemNib, forCellReuseIdentifier: weightItemCellIdentifier)
        
        dailyWeightItemsList.append(DailyWeightItemDTO(day: "Today", value: "85", separatorVisibility: true))
        dailyWeightItemsList.append(DailyWeightItemDTO(day: "Monday", value: "85", separatorVisibility: true))
        dailyWeightItemsList.append(DailyWeightItemDTO(day: "Tuesday", value: "85", separatorVisibility: false))

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = weightManagementTableView?.dequeueReusableCell(withIdentifier: headerCellIdentifier) as! WeightManagementHeaderTableViewCell
            //dismiss(animated: true)
            cell.selectionStyle = .none
            return cell
        }
        else if indexPath.row == 1 {
            let cell = weightManagementTableView?.dequeueReusableCell(withIdentifier: bottomCellIdentifier) as! WeightManagementBottomTableViewCell
            cell.selectionStyle = .none
            return cell
        }
        else {
            let cell = weightManagementTableView?.dequeueReusableCell(withIdentifier: weightItemCellIdentifier) as! WeightManagementDailyWeightItemTableViewCell
            cell.selectionStyle = .none
            cell.initCell(itemInfo: dailyWeightItemsList[indexPath.row - 2])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row > 1 {
            return CGFloat(60)
        }
        else if indexPath.row == 1 {
            return CGFloat(455)
        }
        else {
            return CGFloat(400)
        }
    }
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
