//
//  SelfCareViewController.swift
//  Zestlog
//
//  Created by Apple on 13/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import FSCalendar
class selfweeklSechudulecell : UITableViewCell{
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var datelabel: UILabel!
    @IBOutlet var excerciseResult: UIButton!
    @IBOutlet var excerciseName: UIButton!
    
}

class downloadTableCell : UITableViewCell{
    
}
class GoalTableCell : UITableViewCell{
    
    @IBOutlet var labelName: UILabel!
}



class SelfCareViewController: UIViewController,FSCalendarDelegate {
    
 
    @IBOutlet var overlayView: UIView!
    @IBOutlet var myCalenderView: FSCalendar!
    @IBOutlet var calenderview: DesignableView!
    @IBOutlet var DownloadView: UIView!
    @IBOutlet var DownloadTableview: UITableView!
    @IBOutlet var GoalView: UIView!
    @IBOutlet var goalTableView: UITableView!
   
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        overlayView.isHidden = true
        calenderview.isHidden = true
        DownloadView.isHidden = true
        GoalView.isHidden = true
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func calenderBtnTap(_ sender: UIButton) {
        overlayView.isHidden = false
        calenderview.isHidden = false
         DownloadView.isHidden = true
        GoalView.isHidden = true
    }
    
    @IBAction func CorrectBtnTap(_ sender: UIButton) {
        overlayView.isHidden = true
        calenderview.isHidden = true
         DownloadView.isHidden = true
        GoalView.isHidden = true
    }
    
    @IBAction func wrongBtnTap(_ sender: UIButton) {
       overlayView.isHidden = true
        calenderview.isHidden = true
         DownloadView.isHidden = true
        GoalView.isHidden = true
    }
    
    @IBAction func crossBtnTap(_ sender: UIButton) {
        overlayView.isHidden = true
        calenderview.isHidden = true
        DownloadView.isHidden = true
        GoalView.isHidden = true
    }
    
    @IBAction func DownloadProgramTap(_ sender: DesignableButton) {
        
        overlayView.isHidden = false
        calenderview.isHidden = true
        DownloadView.isHidden = false
         GoalView.isHidden = true
    }
    
    @IBAction func moreoptionBtnTap(_ sender: UIButton) {
        overlayView.isHidden = false
        calenderview.isHidden = true
        DownloadView.isHidden = true
        GoalView.isHidden = false
    }
    
    
    @IBAction func nextButtonTap(_ sender: UIButton) {
        SingletonClass.sharedInstance.isComeFrom = "NextTap"
        self.performPushSeguefromController(identifier: "CoachingViewController")
    }
    
    
    

    
    
}

extension SelfCareViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == DownloadTableview{
            return 3
        }
        else if tableView == goalTableView{
            return 6
        }
       
        else{
             return Datearray.count
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == DownloadTableview{
            let cell = tableView.dequeueReusableCell(withIdentifier: "downloadTableCell", for: indexPath) as? downloadTableCell
            return cell!
        }
        else if tableView == goalTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "GoalTableCell", for: indexPath) as? GoalTableCell
            cell?.labelName.text = goalarray[indexPath.row]
                     return cell!
        }
       
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "selfweeklSechudulecell", for: indexPath) as? selfweeklSechudulecell
                   cell?.dayLabel.text = ExcerCiseDay[indexPath.row]
                   cell?.datelabel.text = Datearray[indexPath.row]
               cell?.excerciseResult.setTitle(ExcerciseResultArray[indexPath.row], for: .normal)
                   cell?.excerciseResult.setImage(excerciseResultImage[indexPath.row], for: .normal)
                   
                   return cell!
        }
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == DownloadTableview{
            return 230
        }
        else if tableView == goalTableView{
            return 60
        }
        
        else{
            return 57
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == DownloadTableview{
            
        }
        else if tableView == goalTableView{
            
        }
       
        else{
            if indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 6{
                      self.performPushSeguefromController(identifier: "RestDayViewController")
                  }
                  else{
                      self.performPushSeguefromController(identifier: "WorkoutViewController")
                  }
        }
      
        
    }
    
    
    
}
