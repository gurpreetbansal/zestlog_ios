//
//  addCardViewController.swift
//  Zestlog
//
//  Created by Apple on 17/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class addCardViewController: UIViewController {

    @IBOutlet var cardDetailView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
   DropNewShadow(myview: cardDetailView)
        self.navigationController?.isNavigationBarHidden = true
       
    }
    
   func DropNewShadow(myview : UIView){
       myview.layer.shadowColor = UIColor.gray.cgColor
       myview.layer.shadowOpacity = 0.3
       myview.layer.shadowOffset = CGSize.zero
       myview.layer.shadowRadius = 6
   }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

