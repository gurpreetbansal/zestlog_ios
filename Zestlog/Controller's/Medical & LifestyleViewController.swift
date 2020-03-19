//
//  Medical & LifestyleViewController.swift
//  Zestlog
//
//  Created by Apple on 17/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class QuetionnarieTableCell : UITableViewCell{
    
    @IBOutlet var QuestionText: UILabel!
}

class Medical___LifestyleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BackTap(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension Medical___LifestyleViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
        headerView.backgroundColor = .white
        let label = UILabel()
        label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        label.textColor = #colorLiteral(red: 0.1589483619, green: 0.2788637877, blue: 0.6626851559, alpha: 1)
        label.font = UIFont(name: "SEGOEUI.TTF", size: 18)
        headerView.addSubview(label)
        if section == 0{
            label.text = "Physical Activity Readiness Questionnaire"
        }
        else if section == 1{
            label.text = "Medical Questionnaire"
        }
        return headerView
    }
    
    
       //Height for hearder
       func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 40
       }
       
    // Number of section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return questinaryarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuetionnarieTableCell", for: indexPath) as! QuetionnarieTableCell
        
        cell.QuestionText.text = questinaryarray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
       
}
