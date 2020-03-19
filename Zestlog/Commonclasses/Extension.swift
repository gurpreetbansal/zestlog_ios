//
//  Extension.swift
//  Zestlog
//
//  Created by Apple on 14/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import UIKit

  extension UIView {

    func dropShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale

    }
    
    
}
extension UIViewController{
    
    //MARK: Push Segue ...
       func performPushSeguefromController(identifier:String){
           let vc = storyboard?.instantiateViewController(withIdentifier: identifier)
           self.navigationController?.pushViewController(vc!, animated: false)
       }
}

