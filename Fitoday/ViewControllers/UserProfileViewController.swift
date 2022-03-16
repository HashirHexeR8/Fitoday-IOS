//
//  UserProfileViewController.swift
//  Fitoday
//
//  Created by Apple on 01/03/2022.
//

import UIKit

class UserProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellIdentifier = "UserProfileTableViewCell"
    
    @IBOutlet weak var userProfileTableView: UITableView?
    
    private var profileDataSource: [UserProfileInfoDTO] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        userProfileTableView?.register(nib, forCellReuseIdentifier: cellIdentifier)
        
        userProfileTableView?.delegate = self
        userProfileTableView?.dataSource = self
        
        let about = UserProfileInfoDTO(itemTitle: "About You", firstItemKey: "Gender", firstItemValue: "Female", secondItemKey: "Birthday", secondItemValue: "Sep, 4, 1990", firstItemIcon: UIImage(contentsOfFile: "BirthdayIcon"), secondItemIcon: UIImage(contentsOfFile: "BirthdayIcon"), itemIconReq: true, lastItem: false, titleItem: true)
        let aboutSecond = UserProfileInfoDTO(itemTitle: "", firstItemKey: "Weight", firstItemValue: "105 lb", secondItemKey: "Height", secondItemValue: "5.6 ft", firstItemIcon: UIImage(contentsOfFile: "BirthdayIcon"), secondItemIcon: UIImage(contentsOfFile: "BirthdayIcon"), itemIconReq: true, lastItem: true, titleItem: false)
        let goalInfo = UserProfileInfoDTO(itemTitle: "My Goals", firstItemKey: "Daily Burned", firstItemValue: "1000 Cal", secondItemKey: "Daily Steps", secondItemValue: "1233", firstItemIcon: nil, secondItemIcon: nil, itemIconReq: true, lastItem: false, titleItem: true)
        let goalSecondInfo = UserProfileInfoDTO(itemTitle: "", firstItemKey: "Weight", firstItemValue: "105 lb", secondItemKey: "Body Fat", secondItemValue: "20%", firstItemIcon: nil, secondItemIcon: nil, itemIconReq: false, lastItem: true, titleItem: false)
        let bedTimeInfo = UserProfileInfoDTO(itemTitle: "Bedtime Schedule", firstItemKey: "Get in Bed", firstItemValue: "10:30 PM", secondItemKey: "Wake Up", secondItemValue: "8:30 AM", firstItemIcon: nil, secondItemIcon: nil, itemIconReq: false, lastItem: false, titleItem: true)
        profileDataSource.append(about)
        profileDataSource.append(aboutSecond)
        profileDataSource.append(goalInfo)
        profileDataSource.append(goalSecondInfo)
        profileDataSource.append(bedTimeInfo)

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = userProfileTableView?.dequeueReusableCell(withIdentifier: cellIdentifier) as! UserProfileTableViewCell
        cell.selectionStyle = .none
        
        cell.initCell(infoDTO: profileDataSource[indexPath.row])
        
        return cell
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
