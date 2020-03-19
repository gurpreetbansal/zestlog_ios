//
//  TrainingProgramViewController.swift
//  Zestlog
//
//  Created by Apple on 17/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TrainingProgramViewController: UIViewController {

    @IBOutlet var weekDayView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
     shadowView(yourView: weekDayView)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
  func shadowView(yourView: UIView){
              
              yourView.layer.shadowColor = UIColor.lightGray.cgColor
              yourView.layer.shadowOpacity = 0.5
              yourView.layer.shadowOffset = .zero
              yourView.layer.shadowRadius = 5
          }

}
