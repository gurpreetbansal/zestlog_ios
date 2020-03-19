//
//  OTPNumberEnetrViewController.swift
//  Zestlog
//
//  Created by Apple on 12/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import SVPinView

class OTPNumberEnetrViewController: UIViewController {

    @IBOutlet var SVPinView: SVPinView!
    var Enterpin = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        SVPinView.keyboardType = .phonePad
        SVPinView.becomeFirstResponderAtIndex = 0
        SVPinView.style = .underline
         
        
        SVPinView.didFinishCallback = { pin in
            print("The pin entered is \(pin)")
            self.Enterpin = pin
        }

        // Do any additional setup after loading the view.
    }
    

    

}
