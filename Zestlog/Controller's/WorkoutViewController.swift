//
//  WorkoutViewController.swift
//  Zestlog
//
//  Created by Apple on 12/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class WorkoutDayCell : UITableViewCell{
    
    @IBOutlet var workoutName: UILabel!
    @IBOutlet var WorkoutButton: UIButton!
    @IBOutlet var workOutView: UIView!
    @IBOutlet var workoutSublabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var workouttypeBtn: UIButton!
    
}

class MainWorkoutCell : UITableViewCell{
    
    @IBOutlet var sequenceNumber: UILabel!
    
}
class graphTableCell : UITableViewCell{
    
    @IBOutlet var graphName: UILabel!
    
}

class WorkoutViewController: UIViewController {

    @IBOutlet var overlayView: UIView!
    @IBOutlet var mainWorkoutView: UIView!
    @IBOutlet var MainWorkoutTableView: UITableView!
    @IBOutlet var warmUpView: DesignableView!
    @IBOutlet var graphView: UIView!
    @IBOutlet var instructionBtn: UIButton!
    @IBOutlet var instructionlabel: UILabel!
    @IBOutlet var chartsBtn: UIButton!
    @IBOutlet var chartsLabel: UILabel!
    @IBOutlet var exerciseView: UIView!
    @IBOutlet var graphTableView: UITableView!
    
    var SelectedRow = -1
    var isViewOpen = false
    var SelectionName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
          
        overlayView.isHidden = true
        mainWorkoutView.isHidden = true
        warmUpView.isHidden = true
        graphView.isHidden = true
        exerciseView.isHidden = false
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backBtnTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func WorkOutTypeBtn(_ sender: UIButton) {
      overlayView.isHidden = false
      mainWorkoutView.isHidden = false
      warmUpView.isHidden = true
        graphView.isHidden = true
    }
    
    @IBAction func nextBtnTap(_ sender: UIButton) {
        
        overlayView.isHidden = false
        mainWorkoutView.isHidden = true
        warmUpView.isHidden = false
        graphView.isHidden = true
    }
    
    @IBAction func crossBtnTap(_ sender: UIButton) {
        overlayView.isHidden = true
        mainWorkoutView.isHidden = true
        warmUpView.isHidden = true
        graphView.isHidden = true
    }
    
    @IBAction func saveBtnTap(_ sender: DesignableButton) {
        overlayView.isHidden = true
        mainWorkoutView.isHidden = true
        warmUpView.isHidden = true
        graphView.isHidden = true
    }
    
    @IBAction func MoreInfoTap(_ sender: UIButton) {
       overlayView.isHidden = false
        mainWorkoutView.isHidden = true
        warmUpView.isHidden = true
        graphView.isHidden = false
        exerciseView.isHidden = false
        graphTableView.isHidden = true
    }
    
    @IBAction func instructionBtnTap(_ sender: UIButton) {
        
        instructionBtn.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        instructionlabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        chartsBtn.setTitleColor(.darkGray, for: .normal)
        chartsLabel.backgroundColor = .lightGray
        graphTableView.isHidden = true
        exerciseView.isHidden = false
     }
    
    @IBAction func chartsBtnTap(_ sender: UIButton) {
        instructionBtn.setTitleColor(.darkGray, for: .normal)
        instructionlabel.backgroundColor = .lightGray
        chartsBtn.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        chartsLabel.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        exerciseView.isHidden = true
        graphTableView.isHidden = false
        graphTableView.reloadData()
    }
    
    
}

extension WorkoutViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == MainWorkoutTableView{
            return 4
        }
        else if tableView == graphTableView{
            return 3
        }
        else{
            return 4
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == MainWorkoutTableView{
           let cell = tableView.dequeueReusableCell(withIdentifier: "MainWorkoutCell", for: indexPath) as! MainWorkoutCell
            cell.sequenceNumber.text = SequenceArray[indexPath.row]
            return cell
        }
        else if tableView == graphTableView{
                let cell = tableView.dequeueReusableCell(withIdentifier: "graphTableCell", for: indexPath) as? graphTableCell
                cell?.graphName.text = graphNamearray[indexPath.row]
                return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutDayCell", for: indexPath) as! WorkoutDayCell
            cell.workoutName.text = workoutArray[indexPath.row]
            if SelectedRow == indexPath.row{
                if isViewOpen == true{
                    cell.workOutView.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
                    cell.workoutName.textColor = .white
                    cell.WorkoutButton.setImage(#imageLiteral(resourceName: "whiteDragUp"), for: .normal)
                    cell.workoutSublabel.text = workOutSubArray[indexPath.row]
                    if indexPath.row == 1{
                        cell.nextButton.isHidden = true
                        cell.workouttypeBtn.isHidden = false
                    }
                    else{
                        cell.nextButton.isHidden = false
                        cell.workouttypeBtn.isHidden = true
                    }
                }
                else{
                    cell.workOutView.backgroundColor = #colorLiteral(red: 0.9256290793, green: 0.9283688068, blue: 0.9320294857, alpha: 1)
                    cell.workoutName.textColor = .black
                    cell.WorkoutButton.setImage(#imageLiteral(resourceName: "DragDown"), for: .normal)
                }
            }
         
            else{
                cell.workOutView.backgroundColor = #colorLiteral(red: 0.9256290793, green: 0.9283688068, blue: 0.9320294857, alpha: 1)
                cell.workoutName.textColor = .black
                cell.WorkoutButton.setImage(#imageLiteral(resourceName: "DragDown"), for: .normal)
            }
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == MainWorkoutTableView{
           return 75
        }
        else if tableView == graphTableView{
            return 210
        }
        else{
            if SelectedRow == indexPath.row{
                     if isViewOpen == true{
                         if indexPath.row == 1{
                             return 510
                         }
                         else{
                            return 97
                         }
                     }
                     else{
                         return 50
                     }
                 }
                 else{
                     return 50
                 }
        }
     
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == MainWorkoutTableView{
            
        }
    else if tableView == graphTableView{
                       
    }
        else{
            self.SelectedRow = indexPath.row
                   if isViewOpen == false{
                       isViewOpen = true
                   }
                   else{
                       isViewOpen = false
                   }
                   tableView.reloadData()
            }
       
    }
    
}

