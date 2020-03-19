//
//  SettingViewController.swift
//  Zestlog
//
//  Created by Apple on 26/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class SettingTableCell : UITableViewCell{
    @IBOutlet var profileText: UILabel!
    
}

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension SettingViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableCell", for: indexPath) as? SettingTableCell
        cell?.profileText.text = SettingArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
        performPushSeguefromController(identifier: "DefaultSettingViewController")
        }else if indexPath.row == 1{
            performPushSeguefromController(identifier: "NotificationViewController")
        }
        else if indexPath.row == 2{
            performPushSeguefromController(identifier: "SettingCoachViewController")
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 75
    }
    
}
