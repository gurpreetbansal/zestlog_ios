//
//  PTSessionsViewController.swift
//  Zestlog
//
//  Created by Apple on 18/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class PTSessionsViewController: UIViewController {
 
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         shadowView(yourView: view1)
         shadowView(yourView: view2)
         shadowView(yourView: view3)
        shadowView(yourView: view4)
        // Do any additional setup after loading the view.
    }
    
    func shadowView(yourView: UIView){
                   
                   yourView.layer.shadowColor = UIColor.lightGray.cgColor
                   yourView.layer.shadowOpacity = 0.5
                   yourView.layer.shadowOffset = .zero
                   yourView.layer.shadowRadius = 5
               }
   

    @IBAction func backTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
