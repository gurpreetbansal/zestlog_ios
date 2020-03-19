//
//  TotalCostViewController.swift
//  Zestlog
//
//  Created by Apple on 18/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TotalCostViewController: UIViewController {

    @IBOutlet var serviceview: UIView!
    @IBOutlet var DietView: UIView!
    @IBOutlet var PersonalTrainingView: UIView!
    @IBOutlet var DayView: UIView!
    @IBOutlet var TrainingView1: UIView!
    @IBOutlet var Trainingview2: UIView!
    @IBOutlet var TrainingView3: UIView!
    @IBOutlet var TrainingView4: UIView!
    @IBOutlet var PersonalProgram1: UIView!
    @IBOutlet var personalProgram2: UIView!
    @IBOutlet var personalProgram3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shadowView(yourView: serviceview)
        shadowView(yourView: DietView)
        shadowView(yourView: PersonalTrainingView)
        shadowView(yourView: DayView)
        shadowView(yourView: TrainingView1)
        shadowView(yourView: Trainingview2)
        shadowView(yourView: TrainingView3)
        shadowView(yourView: TrainingView4)
        shadowView(yourView: PersonalProgram1)
        shadowView(yourView: personalProgram2)
        shadowView(yourView: personalProgram3)
        // Do any additional setup after loading the view.
    }
    func shadowView(yourView: UIView){
        
        yourView.layer.shadowColor = UIColor.lightGray.cgColor
        yourView.layer.shadowOpacity = 0.5
        yourView.layer.shadowOffset = .zero
        yourView.layer.shadowRadius = 5
    }

    @IBAction func MakePaymentTap(_ sender: DesignableButton) {
        self.performPushSeguefromController(identifier: "PaymentCompletedViewController")
    }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
