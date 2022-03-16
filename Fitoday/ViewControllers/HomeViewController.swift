//
//  HomeViewController.swift
//  Fitoday
//
//  Created by Apple on 28/02/2022.
//

import UIKit
import KDCircularProgress

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let headerCellIdentifier = "HomeHeaderTableViewCell"
    let listItemCellView = "ExerciseItemsTableViewCell"

    
    @IBOutlet weak var tableView: UITableView!
    
    var itemsList:[listItemDTO] = []


    override func viewDidLoad() {
        super.viewDidLoad()

        tableView?.delegate = self
        tableView?.dataSource = self
        
        let connectedDeviceNib = UINib(nibName: listItemCellView, bundle: nil)
        tableView?.register(connectedDeviceNib, forCellReuseIdentifier: listItemCellView)
        let nib = UINib(nibName: headerCellIdentifier, bundle: nil)
        tableView?.register(nib, forCellReuseIdentifier: headerCellIdentifier)
        
        
        let weightItem = listItemDTO(itemIconName: "HomeWeightListItemIcon", itemName: "Weight", itemReading: "86kg")
        let bodyProportions = listItemDTO(itemIconName: "HomeProportionsListItemIcon", itemName: "Body Proportions", itemReading: "2/Aug/2021")
        let exerciseItem = listItemDTO(itemIconName: "HomeExerciseListItemIcon", itemName: "Exercise", itemReading: "2/Aug/2021")
        let jumpingRopes = listItemDTO(itemIconName: "HomeSleepListItemIcon", itemName: "Sleep", itemReading: "7 hr 15 Min")
        
        itemsList.append(weightItem)
        itemsList.append(bodyProportions)
        itemsList.append(exerciseItem)
        itemsList.append(jumpingRopes)



        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0) {
            return CGFloat(410)
        }
        return CGFloat(90)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: headerCellIdentifier) as! HomeHeaderTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: listItemCellView) as! ExerciseItemsTableViewCell
            cell.selectionStyle = .none
            cell.initCell(itemDTO: itemsList[indexPath.row - 1])
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            let viewController = WeightManagementViewController()
            viewController.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        else if indexPath.row == 2 {
            let viewController = BodyProportionsViewController()
            viewController.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(viewController, animated: true)
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

