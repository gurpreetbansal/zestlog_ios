//
//  MondayOpenViewController.swift
//  Zestlog
//
//  Created by Apple on 11/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class DaySechduleTableCell : UITableViewCell{
    
    @IBOutlet var Firstlabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var fourthLabel: UILabel!
    @IBOutlet var fifthLabel: UILabel!
    @IBOutlet var sixthLabel: UILabel!
    
    
}

class MondayOpenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension MondayOpenViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DaySechduleTableCell", for: indexPath) as! DaySechduleTableCell
        
        cell.Firstlabel.text  = DayFirst[indexPath.row]
        cell.secondLabel.text = DaySecond[indexPath.row]
        cell.thirdLabel.text  = DayThree[indexPath.row]
        cell.fourthLabel.text = Dayfour[indexPath.row]
        cell.fifthLabel.text  = DayFive[indexPath.row]
        cell.sixthLabel.text  = DaySix[indexPath.row]
        if indexPath.row == 0 || indexPath.row == 3{
            cell.sixthLabel.isHidden = true
        }
        else{
            cell.sixthLabel.isHidden = false
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
