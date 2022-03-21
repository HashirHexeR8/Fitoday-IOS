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
    @IBOutlet weak var policyCheckBoxButton: UIImageView!
    @IBOutlet weak var updatesPolicyCheckBoxButton: UIImageView!
    @IBOutlet weak var containerPrivacyPolicy: UIView!


    
    private var isPolicyCheckBoxChecked = false
    private var isUpdatesPolicyCheckBoxChecked = false
    private var isForgetPasswordEnabled = false
    
    public var isJoinFitoday: Bool = false
    
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
        
        let loginButtonGesture = UITapGestureRecognizer(target: self, action: #selector(self.loginButtonOnClick(_:)))
        self.btnLogin.addGestureRecognizer(loginButtonGesture)
        
        if isJoinFitoday {
            lblForgetPassword.isHidden = true
            containerPrivacyPolicy.isHidden = false
            btnLogin.titleLabel?.text = "Next"
            let policyCheckboxGesture = UITapGestureRecognizer(target: self, action: #selector(self.policyCheckBoxOnClick(_:)))
            policyCheckBoxButton.addGestureRecognizer(policyCheckboxGesture)
            let updatesPolicyCheckboxGesture = UITapGestureRecognizer(target: self, action: #selector(self.updatesPolicyCheckBoxOnClick(_:)))
            updatesPolicyCheckBoxButton.addGestureRecognizer(updatesPolicyCheckboxGesture)
        }
        else {
            lblForgetPassword.isHidden = false
            containerPrivacyPolicy.isHidden = true
            btnLogin.titleLabel?.text = "Login"
            let forgetPasswordGesture = UITapGestureRecognizer(target: self, action: #selector(self.forgetPasswordOnClick(_:)))
            self.lblForgetPassword.isUserInteractionEnabled = true
            self.lblForgetPassword.addGestureRecognizer(forgetPasswordGesture)

        }

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
        else if isJoinFitoday {
            let vc = SignUpViewController()
            vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    @objc func policyCheckBoxOnClick(_ sender:UITapGestureRecognizer)
    {
        if isPolicyCheckBoxChecked {
            policyCheckBoxButton.image = UIImage(named: "CheckBoxUnselected")! as UIImage
        }
        else {
            policyCheckBoxButton.image = UIImage(named: "CheckBoxSelected")! as UIImage
        }
        isPolicyCheckBoxChecked = !isPolicyCheckBoxChecked
    }
    
    @objc func updatesPolicyCheckBoxOnClick(_ sender:UITapGestureRecognizer)
    {
        if isUpdatesPolicyCheckBoxChecked {
            updatesPolicyCheckBoxButton.image = UIImage(named: "CheckBoxUnselected")! as UIImage
        }
        else {
            updatesPolicyCheckBoxButton.image = UIImage(named: "CheckBoxSelected")! as UIImage
        }
        isUpdatesPolicyCheckBoxChecked = !isUpdatesPolicyCheckBoxChecked
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
