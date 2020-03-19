//
//  ClubComuniteRecievingViewController.swift
//  Zestlog
//
//  Created by Apple on 19/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ClubComuniteRecievingViewController: UIViewController {

    @IBOutlet var hiddenView: UIView!
    @IBOutlet var ProfileView: DesignableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenView.isHidden = true
        ProfileView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ImageBtnTap(_ sender: UIButton) {
        hiddenView.isHidden = false
        ProfileView.isHidden = false
    }
    
    @IBAction func crossTap(_ sender: UIButton) {
        hiddenView.isHidden = true
        ProfileView.isHidden = true
    }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
