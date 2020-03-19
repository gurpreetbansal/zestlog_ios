//
//  NotificationViewController.swift
//  Zestlog
//
//  Created by Apple on 21/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class notificationTaleCell : UITableViewCell{
    
    
}

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    
    @IBAction func BackBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension NotificationViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
        let label = UILabel()
        label.frame = CGRect.init(x: 10, y: 5, width: headerView.frame.width - 10 , height: headerView.frame.height - 10)
        label.textColor = .black
        label.font = UIFont(name: "SEGOEUI.TTF", size: 18)
        headerView.addSubview(label)
        if section == 0{
            label.text = "Recent Notifications"
        }
        else if section == 1{
            label.text = "Earlier Notifications"
        }
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 3
        }
        else{
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationTaleCell", for: indexPath) as? notificationTaleCell
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
}
