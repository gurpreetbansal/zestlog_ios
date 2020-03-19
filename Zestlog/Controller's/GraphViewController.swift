//
//  GraphViewController.swift
//  Zestlog
//
//  Created by Apple on 26/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    @IBOutlet var HiddenView: UIView!
    @IBOutlet var GoalView: DesignableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GoalView.isHidden = true
        HiddenView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func GoalBtnTap(_ sender: UIButton) {
        HiddenView.isHidden = false
        GoalView.isHidden = false
    }
    
    @IBAction func CrossBtnTap(_ sender: Any) {
        HiddenView.isHidden = true
        GoalView.isHidden = true
    }
    
}
