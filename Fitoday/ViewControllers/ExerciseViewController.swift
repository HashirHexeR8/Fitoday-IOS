//
//  ExerciseViewController.swift
//  Fitoday
//
//  Created by Apple on 04/03/2022.
//

import UIKit

class ExerciseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var exerciseParentTableView: UITableView!
    
    let exerciseCellIdentifier = "ExerciseMapCellTableViewCell"
    let exerciseDescriptionCellIdentifier = "ExerciseDescriptionCellViewTableViewCell"
    let exerciseListItemCellIdentifier = "ExerciseItemsTableViewCell"
    
    var itemsList: [listItemDTO] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let connectedDeviceNib = UINib(nibName: exerciseCellIdentifier, bundle: nil)
        exerciseParentTableView?.register(connectedDeviceNib, forCellReuseIdentifier: exerciseCellIdentifier)
        
        let exerciseDescriptionNib = UINib(nibName: exerciseDescriptionCellIdentifier, bundle: nil)
        exerciseParentTableView?.register(exerciseDescriptionNib, forCellReuseIdentifier: exerciseDescriptionCellIdentifier)
        
        let exerciseListItemNib = UINib(nibName: exerciseListItemCellIdentifier, bundle: nil)
        exerciseParentTableView?.register(exerciseListItemNib, forCellReuseIdentifier: exerciseListItemCellIdentifier)
        
        exerciseParentTableView?.delegate = self
        exerciseParentTableView?.dataSource = self
        
        let walkingItem = listItemDTO(itemIconName: "WalkingIcon", itemName: "Walking", itemReading: "321 steps")
        let runningItem = listItemDTO(itemIconName: "RunningIcon", itemName: "Running", itemReading: "22 Miles")
        let cyclingItem = listItemDTO(itemIconName: "CyclingIcon", itemName: "Cycling", itemReading: "52 Miles")
        let jumpingRopes = listItemDTO(itemIconName: "JumpRopeIcon", itemName: "Jumping Ropes", itemReading: "52 Miles")
        
        itemsList.append(walkingItem)
        itemsList.append(runningItem)
        itemsList.append(cyclingItem)
        itemsList.append(jumpingRopes)
        
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemsList.count + 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            let cell = exerciseParentTableView?.dequeueReusableCell(withIdentifier: exerciseCellIdentifier) as! ExerciseMapCellTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
        else if (indexPath.row == 1) {
            let cell = exerciseParentTableView?.dequeueReusableCell(withIdentifier: exerciseDescriptionCellIdentifier) as! ExerciseDescriptionCellViewTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell = exerciseParentTableView?.dequeueReusableCell(withIdentifier: exerciseListItemCellIdentifier) as! ExerciseItemsTableViewCell
            cell.selectionStyle = .none
            
            cell.initCell(itemDTO: itemsList[indexPath.row - 2])
            
            return cell
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
