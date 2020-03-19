//
//  PaymentCompletedViewController.swift
//  Zestlog
//
//  Created by Apple on 18/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class PaymentCompletedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ReviewyourProgram(_ sender: DesignableButton) {
        
        
        self.performPushSeguefromController(identifier: "TabBarController")
    }
    
}
