//
//  PostViewController.swift
//  Zestlog
//
//  Created by Apple on 21/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func BackBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
