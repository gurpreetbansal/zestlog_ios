//
//  PrivacySecurityViewController.swift
//  Zestlog
//
//  Created by Apple on 17/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class PrivacySecurityViewController: UIViewController {

    @IBOutlet var DeleteAccountView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        DeleteAccountView.isHidden = true
        DeleteAccountView.layer.shadowColor = UIColor.gray.cgColor
        DeleteAccountView.layer.shadowOpacity = 0.3
        DeleteAccountView.layer.shadowOffset = CGSize.zero
        DeleteAccountView.layer.shadowRadius = 6

    }
    
    @IBAction func backTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func DeleteAccountTap(_ sender: UIButton) {
        if DeleteAccountView.isHidden == true{
                   DeleteAccountView.isHidden = false
               }
               else{
                   DeleteAccountView.isHidden = true
               }
    }
    
    @IBAction func changeLoginPassword(_ sender: UIButton) {
        
    }
    
    @IBAction func SMSPasswordVerify(_ sender: UIButton) {
        
    }
    
    @IBAction func screenPasswordTap(_ sender: UIButton) {
        
    }
}
