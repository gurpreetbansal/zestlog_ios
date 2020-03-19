//
//  ServicesViewController.swift
//  Zestlog
//
//  Created by Apple on 17/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit



class ServicesViewController: UIViewController {

    @IBOutlet var View1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var View3: UIView!
    @IBOutlet var view4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      shadowView(yourView: View1)
      shadowView(yourView: view2)
      shadowView(yourView: View3)
      shadowView(yourView: view4)
        // Do any additional setup after loading the view.
    }
    func shadowView(yourView: UIView){
                
                yourView.layer.shadowColor = UIColor.lightGray.cgColor
                yourView.layer.shadowOpacity = 0.5
                yourView.layer.shadowOffset = .zero
                yourView.layer.shadowRadius = 5
            }
    
    @IBAction func BackBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}


    
    

