//
//  CoachingSchuduleViewController.swift
//  Zestlog
//
//  Created by Apple on 26/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CoachingScheduleTableCell : UITableViewCell{
    @IBOutlet var colourLine: UILabel!
}

class CoachingSchuduleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension CoachingSchuduleViewController : UITableViewDelegate,UITableViewDataSource{
    
    //for header in section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 40))
        headerView.backgroundColor = .white
        let label = UILabel()
        label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        label.textColor = .black
        label.font = UIFont(name: "Segoe UI Semibold.otf", size: 18)
        headerView.addSubview(label)
        if section == 0{
            label.text = "Remaining session"
        }
        else if section == 1{
            label.text = "Past session"
        }
        return headerView
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 2
        }
        else {
            return 2
        }
     }
    
    //Height for hearder
      func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
          return 40
      }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CoachingScheduleTableCell", for: indexPath) as! CoachingScheduleTableCell
        if indexPath.section == 0{
            cell.colourLine.backgroundColor = #colorLiteral(red: 0.9275206327, green: 0.3423281312, blue: 0.06352051347, alpha: 1)
        }
        else if indexPath.section == 1{
            cell.colourLine.backgroundColor = .darkGray
        }
      return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 90
        }
        else {
            return 90
        }
        
    }
    
}
