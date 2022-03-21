//
//  BodyProportionsViewController.swift
//  Fitoday
//
//  Created by Apple on 13/03/2022.
//

import UIKit

class BodyProportionsViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    let headerCellIdentifier = "BodyProportionsHeaderTableViewCell"
    let bottomCellView = "BodyProportionsBottomCellView"
    
    @IBOutlet weak var bodyProportionsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyProportionsTableView.delegate = self
        bodyProportionsTableView.dataSource = self
        
        let headerCellViewNib = UINib(nibName: headerCellIdentifier, bundle: nil)
        bodyProportionsTableView?.register(headerCellViewNib, forCellReuseIdentifier: headerCellIdentifier)
        let bottomCellViewNib = UINib(nibName: bottomCellView, bundle: nil)
        bodyProportionsTableView?.register(bottomCellViewNib, forCellReuseIdentifier: bottomCellView)

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: headerCellIdentifier) as! BodyProportionsHeaderTableViewCell
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: bottomCellView) as! BodyProportionsBottomCellView
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return CGFloat(550)
        }
        else {
            return CGFloat(350)
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
