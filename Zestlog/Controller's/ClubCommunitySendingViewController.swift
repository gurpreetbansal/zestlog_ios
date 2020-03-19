//
//  ClubCommunitySendingViewController.swift
//  Zestlog
//
//  Created by Apple on 19/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit



class ClubCommunitySendingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func CheckHistoryTap(_ sender: UIButton) {
        
    }
    
    @IBAction func crossTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func galleryTap(_ sender: UIButton) {
        self.performPushSeguefromController(identifier: "sendStatusViewController")
    }
    
    @IBAction func recordTap(_ sender: UIButton) {
        self.performPushSeguefromController(identifier: "sendStatusViewController")
    }
    
    @IBAction func CameraRevertTap(_ sender: UIButton) {
        self.performPushSeguefromController(identifier: "sendStatusViewController")
    }
    
}

