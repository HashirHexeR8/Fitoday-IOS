//
//  LoginViewController.swift
//  Fitoday
//
//  Created by Apple on 18/01/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var edEmailText: UITextField!
    @IBOutlet weak var edPasswordText: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblForgetPassword: UILabel!
    @IBOutlet weak var containerPasswordField: UIView!
    
    
    var isForgetPasswordEnabled = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barStyle = .black
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.barStyle = .default
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let forgetPasswordGesture = UITapGestureRecognizer(target: self, action: #selector(self.forgetPasswordOnClick(_:)))
        self.lblForgetPassword.isUserInteractionEnabled = true
        self.lblForgetPassword.addGestureRecognizer(forgetPasswordGesture)
        
        let loginButtonGesture = UITapGestureRecognizer(target: self, action: #selector(self.loginButtonOnClick(_:)))
        self.btnLogin.addGestureRecognizer(loginButtonGesture)

        // Do any additional setup after loading the view.
    }
    
    @objc func forgetPasswordOnClick(_ sender:UITapGestureRecognizer)
    {
        containerPasswordField.isHidden = true
        lblForgetPassword.isHidden = true
        btnLogin.titleLabel?.text = "Send Reset Email"
        isForgetPasswordEnabled = true
    }
    
    @objc func loginButtonOnClick(_ sender:UITapGestureRecognizer)
    {
        if isForgetPasswordEnabled {
            isForgetPasswordEnabled = false
            containerPasswordField.isHidden = false
            lblForgetPassword.isHidden = false
            btnLogin.titleLabel?.text = "Login"
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
