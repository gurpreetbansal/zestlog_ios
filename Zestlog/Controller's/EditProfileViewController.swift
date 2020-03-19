//
//  EditProfileViewController.swift
//  Zestlog
//
//  Created by Apple on 17/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    
    @IBOutlet var profileNameView: UIView!
    @IBOutlet var PGeneralView: UIView!
    @IBOutlet var PPersonalizeView: UIView!
    @IBOutlet var EProfileNameView: UIView!
    @IBOutlet var EGeneralView: UIView!
    @IBOutlet var EPersonalizeView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       StartFunc()
        self.navigationController?.isNavigationBarHidden  = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func ProfileNameEditTap(_ sender: UIButton) {
        self.profileNameView.isHidden = true
        self.EProfileNameView.isHidden = false
    }
    
    @IBAction func PGeneralViewEditTap(_ sender: Any) {
        self.PGeneralView.isHidden = true
        self.EGeneralView.isHidden = false
    }
    
    
    @IBAction func PPersonelInfoEditTap(_ sender: UIButton) {
        self.PPersonalizeView.isHidden = true
        self.EPersonalizeView.isHidden = false
        
    }
    
    @IBAction func EProfileNameCrossTap(_ sender: UIButton) {
        self.profileNameView.isHidden = false
               self.EProfileNameView.isHidden = true
    }
    
    @IBAction func EGeneralCrossTap(_ sender: UIButton) {
        self.PGeneralView.isHidden = false
               self.EGeneralView.isHidden = true
    }
    
    @IBAction func EPersonelInfoCross(_ sender: UIButton) {
        
        self.PPersonalizeView.isHidden = false
        self.EPersonalizeView.isHidden = true
    }
    
    @IBAction func backTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func StartFunc(){
        DropNewShadow(myview: profileNameView)
        DropNewShadow(myview: PGeneralView)
        DropNewShadow(myview: PPersonalizeView)
        DropNewShadow(myview: EProfileNameView)
        DropNewShadow(myview: EGeneralView)
         DropNewShadow(myview: EPersonalizeView)
    }
    
    func DropNewShadow(myview : UIView){
        myview.layer.shadowColor = UIColor.gray.cgColor
        myview.layer.shadowOpacity = 0.3
        myview.layer.shadowOffset = CGSize.zero
        myview.layer.shadowRadius = 6
    }

   
}

