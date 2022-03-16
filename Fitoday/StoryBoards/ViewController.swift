//
//  ViewController.swift
//  Fitoday
//
//  Created by Apple on 12/01/2022.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    
    
    //@IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnSignupWithFacebook: UIView!
    @IBOutlet weak var btnSignupWithGmail: UIView!
    @IBOutlet weak var btnSignupWithEmail: UIView!
    @IBOutlet weak var btnSignupJoinFitoday: UIView!
    @IBOutlet weak var pageControlViewContainer: UIView!
    
    var introControllers: [IntroPagerViewController] = []
    var currentViewControllerIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        introControllers = createIntroControllers()
        
        guard let pageViewController = storyboard?.instantiateViewController(withIdentifier: String.init(describing: "OnBoardingPagerViewController")) as? UIPageViewController else {
            return
        }
                
        pageViewController.delegate = self
        pageViewController.dataSource = self
        
        addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.pageControlViewContainer.addSubview(pageViewController.view)
        
        NSLayoutConstraint.activate([
            pageViewController.view.topAnchor.constraint(equalTo: pageControlViewContainer.topAnchor, constant: 0.0),
            pageViewController.view.bottomAnchor.constraint(equalTo: pageControlViewContainer.bottomAnchor, constant: 0.0),
            pageViewController.view.leadingAnchor.constraint(equalTo: pageControlViewContainer.leadingAnchor, constant: 0.0),
            pageViewController.view.trailingAnchor.constraint(equalTo: pageControlViewContainer.trailingAnchor, constant: 0.0)])

        pageControl.numberOfPages = introControllers.count
        pageControl.currentPage = 0
        
        pageViewController.setViewControllers([introControllers[0]], direction: .forward, animated: true)
                
        let loginWithEmailClickGesture = UITapGestureRecognizer(target: self, action: #selector(self.onLoginWithEmailClicked(_:)))
        self.btnSignupWithEmail.isUserInteractionEnabled = true
        self.btnSignupWithEmail.addGestureRecognizer(loginWithEmailClickGesture)
        
        let loginWithFacebookClickGesture = UITapGestureRecognizer(target: self, action: #selector(self.onLoginWithFacebookClicked(_:)))
        self.btnSignupWithFacebook.isUserInteractionEnabled = true
        self.btnSignupWithFacebook.addGestureRecognizer(loginWithFacebookClickGesture)
        
        let loginWithGoogleClickGesture = UITapGestureRecognizer(target: self, action: #selector(self.onLoginWithGmailClicked(_:)))
        self.btnSignupWithGmail.isUserInteractionEnabled = true
        self.btnSignupWithGmail.addGestureRecognizer(loginWithGoogleClickGesture)
        
        let joinFitodayClickGesture = UITapGestureRecognizer(target: self, action: #selector(self.onJoinFitodayClicked(_:)))
        self.btnSignupJoinFitoday.isUserInteractionEnabled = true
        self.btnSignupJoinFitoday.addGestureRecognizer(joinFitodayClickGesture)
        // Do any additional setup after loading the view.
    }
    
    @objc func onLoginWithEmailClicked(_ sender:UITapGestureRecognizer)
    {
        let vc = LoginViewController()
        vc.isJoinFitoday = false
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func onLoginWithFacebookClicked(_ sender:UITapGestureRecognizer)
    {
        let vc = LoginViewController()
        vc.isJoinFitoday = false
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func onLoginWithGmailClicked(_ sender:UITapGestureRecognizer)
    {
        let vc = LoginViewController()
        vc.isJoinFitoday = false
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func onJoinFitodayClicked(_ sender:UITapGestureRecognizer)
    {
        let vc = LoginViewController()
        vc.isJoinFitoday = true
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: true, completion: nil)
    }
    
    func introViewControllerAt(index: Int) -> IntroPagerViewController? {
        if index >= introControllers.count || introControllers.count == 0 {
            return nil
        }
        
        introControllers[index].mPageType = introPageType.init(rawValue: index) ?? .enjoy
        
        return introControllers[index]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let currentPageViewController = pageViewController.viewControllers?.first as? IntroPagerViewController {
            self.pageControl.currentPage = currentPageViewController.mPageType.rawValue
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let introViewController = viewController as? IntroPagerViewController
        
        guard var currentIndex = introViewController?.mPageType.rawValue else {
            return nil
        }
        
        currentViewControllerIndex = currentIndex
        
        if currentIndex == 0 {
            return nil
        }
        
        currentIndex -= 1
                
        return introViewControllerAt(index: currentIndex)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let introViewController = viewController as? IntroPagerViewController
        
        guard var currentIndex = introViewController?.mPageType.rawValue else {
            return nil
        }
        
        currentViewControllerIndex = currentIndex
        
        if currentIndex == introControllers.count {
            return nil
        }
        
        currentIndex += 1
                        
        return introViewControllerAt(index: currentIndex)
    }
    
    func createIntroControllers() -> [IntroPagerViewController]
    {
        let introEnjoy: IntroPagerViewController = IntroPagerViewController(pageType: .enjoy)
        let introIDK: IntroPagerViewController = IntroPagerViewController(pageType: .idk)
        let introRun: IntroPagerViewController = IntroPagerViewController(pageType: .run)

        
        return [introEnjoy, introIDK, introRun]
    }


}

