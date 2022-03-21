//
//  SettingsViewController.swift
//  Fitoday
//
//  Created by Apple on 01/03/2022.
//

import UIKit

class SettingsViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    let settingsCellIdentifier = "SettingsItemCellView"
    let settingsShopCellIdentifier = "SettingsShopFitodayCellView"
    let settingsLogoutButtonCellIdentifier = "SettingsLogoutButtonTableViewCell"

    
    let settingsItemsList = ["Accounts & Security", "Units", "Privacy & Legal Terms", "Help", "Rate Fitody"]
    
    
    @IBOutlet weak var settingsTableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: settingsCellIdentifier, bundle: nil)
        settingsTableView?.register(nib, forCellReuseIdentifier: settingsCellIdentifier)
        let shopNib = UINib(nibName: settingsShopCellIdentifier, bundle: nil)
        settingsTableView?.register(shopNib, forCellReuseIdentifier: settingsShopCellIdentifier)
        let logoutButtonNib = UINib(nibName: settingsLogoutButtonCellIdentifier, bundle: nil)
        settingsTableView?.register(logoutButtonNib, forCellReuseIdentifier: settingsLogoutButtonCellIdentifier)
        settingsTableView?.delegate = self
        settingsTableView?.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 5 {
            let cell = settingsTableView?.dequeueReusableCell(withIdentifier: settingsCellIdentifier) as! SettingsItemCellView
            cell.selectionStyle = .none
            cell.initCell(itemText: settingsItemsList[indexPath.row])
            
            return cell
        }
        else if indexPath.row == 5 {
            let cell = settingsTableView?.dequeueReusableCell(withIdentifier: settingsShopCellIdentifier) as! SettingsShopFitodayCellView
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell = settingsTableView?.dequeueReusableCell(withIdentifier: settingsLogoutButtonCellIdentifier) as! SettingsLogoutButtonTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    @IBAction func onBackButtonClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
