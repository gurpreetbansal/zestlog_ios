//
//  NumberVerifiedViewController.swift
//  Zestlog
//
//  Created by Apple on 12/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class NumberVerifiedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
    }
    

    @IBAction func loginTap(_ sender: DesignableButton) {
        performPushSeguefromController(identifier: "LoginViewController")
    }
    

}
