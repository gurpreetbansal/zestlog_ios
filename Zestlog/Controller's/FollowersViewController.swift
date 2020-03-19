//
//  FollowersViewController.swift
//  Zestlog
//
//  Created by Apple on 20/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class followersTableCell : UITableViewCell{
    
    @IBOutlet var FollowBtn: DesignableButton!
    
}

class FollowersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension FollowersViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "followersTableCell", for: indexPath) as? followersTableCell
        if indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 2{
            cell?.FollowBtn.backgroundColor = .clear
            cell?.FollowBtn.layer.borderWidth = 1
            cell?.FollowBtn.layer.borderColor = #colorLiteral(red: 0.1923199892, green: 0.3788662851, blue: 0.6947491169, alpha: 1)
            cell?.FollowBtn.setTitleColor(#colorLiteral(red: 0.1923199892, green: 0.3788662851, blue: 0.6947491169, alpha: 1), for: .normal)
        }
        else{
            cell?.FollowBtn.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
            
            cell?.FollowBtn.setTitleColor(.white, for: .normal)
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
}
