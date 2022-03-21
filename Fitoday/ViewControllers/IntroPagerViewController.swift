//
//  IntroPagerViewController.swift
//  Fitoday
//
//  Created by Apple on 16/01/2022.
//

import UIKit

class IntroPagerViewController: UIViewController {
    
    @IBOutlet weak var introImageView: UIImageView!
    @IBOutlet weak var introInfoLabel: UILabel!
    
    var mPageType: introPageType
    
    init(pageType: introPageType)
    {
        self.mPageType = pageType
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        self.mPageType = .enjoy
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if mPageType == .enjoy {
            let htmlString = "Get Ahead of Your <font color=#EF426F>Fitness Goals</font> <br> With Smart <font color=#EF426F>Fitness Devices</font>"
            let data = Data(htmlString.utf8)
            if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                self.introInfoLabel.attributedText = attributedString
            }
            self.introImageView.image = UIImage(named: "IntroLogoEnjoy")
        }
        else if mPageType == .idk {
            let htmlString = "Struggling to keep up with <br>your <font color =#EF426F>workout routines</font>?"
            let data = Data(htmlString.utf8)
            if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                self.introInfoLabel.attributedText = attributedString
            }
            self.introImageView.image = UIImage(named: "IntroLogoIdk")
        }
        else if mPageType == .run {
            let htmlString = "Optimize Your <font color=#EF426F> Fitness Performance <br></font> With Precise <font color=#EF426F>Measuring</font> and <font color=#EF426F>Tracking</font>"
            let data = Data(htmlString.utf8)
            if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                self.introInfoLabel.attributedText = attributedString
            }
            self.introImageView.image = UIImage(named: "IntroLogoRun")
        }
        
        self.introInfoLabel.font = UIFont(name: "Comfortaa-bold", size: 20.0)
        self.introInfoLabel.font = self.introInfoLabel.font.withSize(19)
        self.introInfoLabel.textAlignment = .center

        // Do any additional setup after loading the view.
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
