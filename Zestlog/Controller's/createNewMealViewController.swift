//
//  createNewMealViewController.swift
//  Zestlog
//
//  Created by Apple on 25/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class createmealtableCell : UITableViewCell{
    
}

class createNewMealViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
}

extension createNewMealViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "createmealtableCell", for: indexPath) as? createmealtableCell
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 134
    }
    
    
    
}
