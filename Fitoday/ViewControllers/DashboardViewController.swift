//
//  DashboardViewController.swift
//  Fitoday
//
//  Created by Apple on 05/03/2022.
//

import UIKit

class DashboardViewController: UITabBarController, UITabBarControllerDelegate {
    
    @IBOutlet weak var homeTabBarItem: UITabBarItem!
    @IBOutlet weak var deviceTabBarItem: UITabBarItem!
    @IBOutlet weak var profileTabBarItem: UITabBarItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        let homeTab = HomeViewController()
        homeTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "BottomBarHomeIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "BottomBarHomeIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        let exerciseTab = ExerciseViewController()
        exerciseTab.tabBarItem = UITabBarItem(title: "Exercise", image: UIImage(named: "BottomBarExerciseIconUnselected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "ExerciseSelectedIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        let deviceTab = ShopDevicesViewController()
        deviceTab.tabBarItem = UITabBarItem(title: "Device", image: UIImage(named: "BottomBarDevicesUnselected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "BottomBarDevicesIconSelected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        let profileTab = UserProfileViewController()
        profileTab.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "BottomBarProfileIconUnSelected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "BottomBarProfileSelectedIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        self.viewControllers = [homeTab, exerciseTab, deviceTab, profileTab]
        // Do any additional setup after loading the view.
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
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
