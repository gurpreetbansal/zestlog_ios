//
//  ServiceProviderViewController.swift
//  Zestlog
//
//  Created by Apple on 14/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ServiceProviderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

}
