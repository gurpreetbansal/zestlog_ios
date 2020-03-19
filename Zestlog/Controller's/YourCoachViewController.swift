//
//  YourCoachViewController.swift
//  Zestlog
//
//  Created by Apple on 16/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class YourCoachViewController: UIViewController {

    @IBOutlet var coachView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        shadowView(yourView: coachView)
        // Do any additional setup after loading the view.
    }
    
    func shadowView(yourView: UIView){
          
          yourView.layer.shadowColor = UIColor.lightGray.cgColor
          yourView.layer.shadowOpacity = 0.5
          yourView.layer.shadowOffset = .zero
          yourView.layer.shadowRadius = 5
      }
    @IBAction func goBackTap(_ sender: DesignableButton) {
       SingletonClass.sharedInstance.isComeFrom = "NextTap"
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func yesContinueTap(_ sender: DesignableButton) {
        
    }
}
