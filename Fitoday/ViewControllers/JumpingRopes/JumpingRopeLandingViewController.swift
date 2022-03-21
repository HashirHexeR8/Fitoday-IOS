//
//  JumpingRopeLandingViewController.swift
//  Fitoday
//
//  Created by Apple on 17/03/2022.
//

import Foundation
import UIKit

class JumpingRopeLandingViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    let headerCellIdentifier = "JumpingRopesLandingHeaderTableViewCell"
    let bottomCellIdentifier = "JumpingRopesLandingBottomTableViewCell"

    
    @IBOutlet weak var jumpRopeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.jumpRopeTableView.dataSource = self
        self.jumpRopeTableView.delegate = self
        
        let headerNib = UINib(nibName: headerCellIdentifier, bundle: nil)
        self.jumpRopeTableView.register(headerNib, forCellReuseIdentifier: headerCellIdentifier)
        let bottomNib = UINib(nibName: bottomCellIdentifier, bundle: nil)
        self.jumpRopeTableView.register(bottomNib, forCellReuseIdentifier: bottomCellIdentifier)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = jumpRopeTableView.dequeueReusableCell(withIdentifier: headerCellIdentifier, for: indexPath) as! JumpingRopesLandingHeaderTableViewCell
            cell.selectionStyle = .none
            return cell
        }
        else {
            let cell = jumpRopeTableView.dequeueReusableCell(withIdentifier: bottomCellIdentifier, for: indexPath) as! JumpingRopesLandingBottomTableViewCell
            cell.selectionStyle = .none
            
            cell.onJumpModeButtonClicked = { [unowned self] (selectedMode) in
                let storyBoard: UIStoryboard = UIStoryboard(name: "JumpingRopes", bundle: nil)
                switch selectedMode {
                case .targetMode:
                    let viewController = storyBoard.instantiateViewController(withIdentifier: "SetTargetViewController") as! SetTargetViewController
                    self.navigationController?.pushViewController(viewController, animated: true)
                case .freeJumpMode:
                    let viewController = storyBoard.instantiateViewController(withIdentifier: "FreeJumpingModeViewController") as! FreeJumpingModeViewController
                    self.navigationController?.pushViewController(viewController, animated: true)
                case .timerMode:
                    let viewController = storyBoard.instantiateViewController(withIdentifier: "TimerModeViewController") as! TimerModeViewController
                    self.navigationController?.pushViewController(viewController, animated: true)
                case .countdownMode:
                    let viewController = storyBoard.instantiateViewController(withIdentifier: "TargetModeViewController") as! TargetModeViewController
                    self.navigationController?.pushViewController(viewController, animated: true)
                }
                
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return CGFloat(340)
        }
        else {
            return CGFloat(500)
        }
    }
    
    @IBAction func onBackButtonClick(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
