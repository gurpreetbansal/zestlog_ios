//
//  DefaultSettingViewController.swift
//  Zestlog
//
//  Created by Apple on 26/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class DefaultSettingViewController: UIViewController {
    @IBOutlet var MetricUnit: UIButton!
    @IBOutlet var AmericanUnit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func AmericanUnitTap(_ sender: UIButton) {
       MetricUnit.setImage(#imageLiteral(resourceName: "greyround"), for: .normal)
        AmericanUnit.setImage(#imageLiteral(resourceName: "roundBlue"), for: .normal)
        
    }
    
    
    @IBAction func MetricUnitTap(_ sender: UIButton) {
         MetricUnit.setImage(#imageLiteral(resourceName: "roundBlue"), for: .normal)
        AmericanUnit.setImage(#imageLiteral(resourceName: "greyround"), for: .normal)
    }
    
}
