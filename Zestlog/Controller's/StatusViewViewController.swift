//
//  StatusViewViewController.swift
//  Zestlog
//
//  Created by Apple on 20/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class checkStatusCell : UITableViewCell{
    
    @IBOutlet var seenBtn: UIButton!
}

class StatusViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension StatusViewViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkStatusCell", for: indexPath) as! checkStatusCell
        if indexPath.row == 0{
            cell.seenBtn.setImage(#imageLiteral(resourceName: "Seen"), for: .normal)
        }
        if indexPath.row == 0{
                   cell.seenBtn.setImage(#imageLiteral(resourceName: "unSeen-1"), for: .normal)
               }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
