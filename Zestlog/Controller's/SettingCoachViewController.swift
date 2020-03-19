//
//  SettingCoachViewController.swift
//  Zestlog
//
//  Created by Apple on 17/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class SettingCoachViewController: UIViewController {

    @IBOutlet var mySelfRadio: UIButton!
    @IBOutlet var myClubRadio: UIButton!
    @IBOutlet var syncView: UIView!
    @IBOutlet var asyncView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myselfRadioTap(_ sender: UIButton) {
        myClubRadio.setImage(#imageLiteral(resourceName: "greyround"), for: .normal)
               mySelfRadio.setImage(#imageLiteral(resourceName: "roundBlue"), for: .normal)
    }
    
    @IBAction func myClubRadioTap(_ sender: UIButton) {
        myClubRadio.setImage(#imageLiteral(resourceName: "roundBlue"), for: .normal)
        mySelfRadio.setImage(#imageLiteral(resourceName: "greyround"), for: .normal)
        
    }
    
    
    @IBAction func stopsyncTap(_ sender: DesignableButton) {
        asyncView.isHidden = true
        syncView.isHidden = false
    }
    
    @IBAction func startSyncTap(_ sender: DesignableButton) {
        asyncView.isHidden = false
        syncView.isHidden = true
        
    }
    
    @IBAction func BackBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
