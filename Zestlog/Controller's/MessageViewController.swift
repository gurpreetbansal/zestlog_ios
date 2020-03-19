//
//  MessageViewController.swift
//  Zestlog
//
//  Created by Apple on 20/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class messageTableCell : UITableViewCell{
    
    @IBOutlet var NotificationBack: UIButton!
     @IBOutlet var NotificationText: UILabel!
}

class MessageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension MessageViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageTableCell", for: indexPath) as? messageTableCell
        if indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 2{
            cell?.NotificationBack.isHidden = false
            cell?.NotificationText.isHidden = false
        }
        else{
            cell?.NotificationBack.isHidden = true
            cell?.NotificationText.isHidden = true
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performPushSeguefromController(identifier: "ChatVC")
    }
    
}
