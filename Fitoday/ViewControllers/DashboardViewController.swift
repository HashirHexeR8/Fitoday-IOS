//
//  DashboardViewController.swift
//  Fitoday
//
//  Created by Apple on 05/03/2022.
//

import UIKit

class DashboardViewController: UITabBarController, UITabBarControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.tabBar.backgroundColor = .white
        self.tabBar.barTintColor = .white
        
        delegate = self
        
        let homeTab = HomeViewController()
        homeTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "BottomBarHomeIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "BottomBarHomeIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        let exerciseTab = ExerciseViewController()
        exerciseTab.tabBarItem = UITabBarItem(title: "Exercise", image: UIImage(named: "BottomBarExerciseIconUnselected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "ExerciseSelectedIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        let deviceTab = ShopDevicesViewController()
        deviceTab.tabBarItem = UITabBarItem(title: "Device", image: UIImage(named: "BottomBarDevicesUnselected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "BottomBarDevicesIconSelected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        let profileTab = UserProfileViewController()
        profileTab.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "BottomBarProfileIconUnSelected")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "BottomBarProfileSelectedIcon")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        self.viewControllers = [UINavigationController(rootViewController: homeTab), UINavigationController(rootViewController: exerciseTab), UINavigationController(rootViewController: deviceTab), UINavigationController(rootViewController: profileTab)]
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
