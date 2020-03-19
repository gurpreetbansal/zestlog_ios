//
//  LoginViewController.swift
//  Zestlog
//
//  Created by Apple on 12/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
       self.navigationController?.isNavigationBarHidden = true
    }

    

}
