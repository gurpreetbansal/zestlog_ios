//
//  MyProfileViewController.swift
//  Zestlog
//
//  Created by Apple on 14/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class profileCell : UITableViewCell{
    
    @IBOutlet var profileText: UILabel!
}

class MyProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func logOutBtnTap(_ sender: DesignableButton) {
        
        //Show alert View
        // Create the alert controller
               let alertController = UIAlertController(title: "Zestlog", message: "Are you sure you want to logout?", preferredStyle: .alert)

               // Create the actions
        let okAction = UIAlertAction(title: "yes", style: UIAlertAction.Style.default) {
                   UIAlertAction in
                   NSLog("OK Pressed")
            self.performPushSeguefromController(identifier: "LoginViewController")
               }
        let cancelAction = UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel) {
                   UIAlertAction in
                   NSLog("Cancel Pressed")
               }

               // Add the actions
               alertController.addAction(okAction)
               alertController.addAction(cancelAction)

               // Present the controller
               self.present(alertController, animated: true, completion: nil)
    }
    
}

extension MyProfileViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Profilearray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as? profileCell
        cell?.profileText.text = Profilearray[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            performPushSeguefromController(identifier: "EditProfileViewController")
        }
        else if indexPath.row == 1{
           performPushSeguefromController(identifier: "PrivacySecurityViewController")
        }
        else if indexPath.row == 2{
           performPushSeguefromController(identifier: "SettingViewController")
        }
        else if indexPath.row == 3{
             performPushSeguefromController(identifier: "Medical___LifestyleViewController")
        }
        else if indexPath.row == 4{
         performPushSeguefromController(identifier: "PaymentBillingViewController")
            
        }
        else if indexPath.row == 5{
            performPushSeguefromController(identifier: "ServiceProviderViewController")
        }
        else if indexPath.row == 6{
           performPushSeguefromController(identifier: "ContactUsViewController")
        }
    }
    
    
}
