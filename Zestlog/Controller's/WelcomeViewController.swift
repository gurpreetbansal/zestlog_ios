//
//  WelcomeViewController.swift
//  Zestlog
//
//  Created by Apple on 11/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    

    @IBAction func logInBtnTap(_ sender: DesignableButton) {
        
        let gotoLogin = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        self.navigationController?.pushViewController(gotoLogin!, animated: true)
    }
    

}
