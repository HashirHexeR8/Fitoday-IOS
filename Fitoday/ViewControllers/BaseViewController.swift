//
//  BaseViewController.swift
//  Fitoday
//
//  Created by Apple on 17/03/2022.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backgroundColor = .white

    }
}
