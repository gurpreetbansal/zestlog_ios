//
//  TrackingViewController.swift
//  Zestlog
//
//  Created by Apple on 13/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class HealthAssesmentCell : UITableViewCell{
    @IBOutlet var HealthText: UILabel!
    @IBOutlet var HealthsubTabView: UITableView!
    @IBOutlet var AssesmentName: UILabel!
    @IBOutlet var addButtonView: UIView!
    
}
class HealthAssesmentSubCell : UITableViewCell{
    
    @IBOutlet var HealthDate: UILabel!
    @IBOutlet var HealthFrequency: UILabel!
    @IBOutlet var HealthMapRatio: UIButton!
}

class VisualTrackingTableCell : UITableViewCell{
    
}



class TrackingViewController: UIViewController {
    
    @IBOutlet var HealthTableView: UITableView!
    @IBOutlet var AssesmentName: UILabel!
    @IBOutlet var ChartstatusName: UILabel!
    @IBOutlet var overlayView: UIView!
    @IBOutlet var chartView: DesignableView!
    @IBOutlet var RecordTrackingTableView: UITableView!
    @IBOutlet var healthImage: UIImageView!
    @IBOutlet var HealthLabel: UILabel!
    @IBOutlet var RecordImage: UIImageView!
    @IBOutlet var RecordLbl: UILabel!
    @IBOutlet var VisualImage: UIImageView!
    @IBOutlet var Visuallabel: UILabel!
    @IBOutlet var AddView: DesignableView!
    @IBOutlet var VisualTrackingTableView: UITableView!
    @IBOutlet var visualTrackingView: UIView!
    
    var cell = HealthAssesmentCell()
    var cell2 = HealthAssesmentSubCell()
    var isCellSelected : Bool = false
    var SelectedCell : Int = -1
    var selectedData = ""
    var TableView = 1
    var ButtonTap = ""
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.isNavigationBarHidden = true
        chartView.isHidden = true
        overlayView.isHidden = true
        AddView.isHidden = true
        visualTrackingView.isHidden = true
        tabBarItem.selectedImage = #imageLiteral(resourceName: "STracking").withRenderingMode(.alwaysOriginal)
        tabBarItem.image = #imageLiteral(resourceName: "Tracking").withRenderingMode(.alwaysOriginal)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func chartViewCrossTap(_ sender: UIButton) {
        AddView.isHidden = true
        chartView.isHidden = true
        overlayView.isHidden = true
    }
    
    @IBAction func chartTap(_ sender: UIButton) {
        chartView.isHidden = false
        overlayView.isHidden = false
        AddView.isHidden = true
    }
    
    @IBAction func addBtnTap(_ sender: DesignableButton) {
        chartView.isHidden = true
        overlayView.isHidden = false
        AddView.isHidden = false
    }
    @IBAction func HealthassesmentTap(_ sender: UIButton) {
        self.ButtonTap = "Health"
        healthImage.image = #imageLiteral(resourceName: "selectedAssesment")
        HealthLabel.textColor = #colorLiteral(red: 0.1600164771, green: 0.2933432758, blue: 0.6471042633, alpha: 1)
        RecordImage.image = #imageLiteral(resourceName: "Recording")
        RecordLbl.textColor = .darkGray
        VisualImage.image = #imageLiteral(resourceName: "visualTracking")
        Visuallabel.textColor = .darkGray
        visualTrackingView.isHidden = true
        HealthTableView.reloadData()
    }
    
    @IBAction func RecordingTrackingTap(_ sender: UIButton) {
        self.ButtonTap = "Record"
        healthImage.image = #imageLiteral(resourceName: "unHealthAssesment")
        HealthLabel.textColor = .darkGray
        RecordImage.image = #imageLiteral(resourceName: "RecordingTracking")
        RecordLbl.textColor = #colorLiteral(red: 0.1600164771, green: 0.2933432758, blue: 0.6471042633, alpha: 1)
        VisualImage.image = #imageLiteral(resourceName: "visualTracking")
        Visuallabel.textColor = .darkGray
        visualTrackingView.isHidden = true
        HealthTableView.reloadData()
    }
    
    @IBAction func visualTrackingTap(_ sender: UIButton) {
        self.ButtonTap = "Visual"
        healthImage.image = #imageLiteral(resourceName: "unHealthAssesment")
        HealthLabel.textColor = .darkGray
        RecordImage.image = #imageLiteral(resourceName: "Recording")
        RecordLbl.textColor = .darkGray
        VisualImage.image = #imageLiteral(resourceName: "VisualTracking-1")
        Visuallabel.textColor = #colorLiteral(red: 0.1600164771, green: 0.2933432758, blue: 0.6471042633, alpha: 1)
        visualTrackingView.isHidden = false
        VisualTrackingTableView.reloadData()
    }
    
    
}

extension TrackingViewController : UITableViewDataSource,UITableViewDelegate{
    
    //for header in section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if tableView == VisualTrackingTableView{
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: VisualTrackingTableView.frame.width, height: 40))
            headerView.backgroundColor = .white
            let label = UILabel()
            label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
            label.textColor = .darkGray
            label.font = UIFont(name: "SEGOEUI.TTF", size: 18)
            headerView.addSubview(label)
            if section == 0{
                label.text = "27 Dec 2019"
            }
            else if section == 1{
                label.text = "16 dec 2019"
            }
            else if section == 2{
                label.text = "4 Dec 2019"
            }
            return headerView
        }
        else{
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: VisualTrackingTableView.frame.width, height: 0))
            return headerView
        }
    }
    
    //Height for hearder
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == VisualTrackingTableView{
            return 40
        }
        else{
            return 0
        }
    }
    
    
    // Number of section
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == VisualTrackingTableView{
            return 3
        }
        else{
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == HealthTableView{
            return trackingArray.count
        }
        else if tableView == VisualTrackingTableView{
            return 1
        }
        else{
            return BMIArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == HealthTableView{
            cell = HealthTableView.dequeueReusableCell(withIdentifier: "HealthAssesmentCell", for: indexPath) as! HealthAssesmentCell
            if self.ButtonTap == "Health"{
                cell.HealthText.text = trackingArray[indexPath.row]
            }
            else if self.ButtonTap == "Record"{
                cell.HealthText.text = RecorDingTrackingArray[indexPath.row]
            }
            
            
            if SelectedCell == indexPath.row{
                if isCellSelected == true{
                    cell.HealthsubTabView.delegate = self
                    cell.HealthsubTabView.dataSource = self
                    cell.HealthsubTabView.reloadData()
                }
            }
            if self.ButtonTap == "Health"{
                cell.addButtonView.isHidden = true
            }
            else if self.ButtonTap == "Record"{
                cell.addButtonView.isHidden = false
            }
            if indexPath.row == 0{
                self.selectedData = "BMI"
                cell.AssesmentName.text = "BMI"
            }
            else if indexPath.row == 1{
                self.selectedData = "WC"
                cell.AssesmentName.text = "WC"
            }
            else{
                self.selectedData = "WH"
                cell.AssesmentName.text = "WH"
            }
            return cell
        }
        else if tableView == VisualTrackingTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "VisualTrackingTableCell", for: indexPath) as! VisualTrackingTableCell
            return cell
        }
        else{
            cell2 = tableView.dequeueReusableCell(withIdentifier: "HealthAssesmentSubCell", for: indexPath) as! HealthAssesmentSubCell
            cell2.HealthDate.text = DateArray[indexPath.row]
            
            cell2.HealthMapRatio.isHidden = true
            if self.ButtonTap == "Health"{
                cell2.HealthMapRatio.setImage(#imageLiteral(resourceName: "shareRate"), for: .normal)
            }
            else{
                cell2.HealthMapRatio.setImage(#imageLiteral(resourceName: "BlueshareRatio"), for: .normal)
            }
            if selectedData == "BMI"{
                cell2.HealthFrequency.text = BMIArray[indexPath.row]
                if indexPath.row == 5{
                    cell2.HealthMapRatio.isHidden = false
                }
                else{
                    cell2.HealthMapRatio.isHidden = true
                }
                
            }
            else if selectedData == "WC"{
                cell2.HealthFrequency.text = WCArray[indexPath.row]
                if indexPath.row == 5{
                    cell2.HealthMapRatio.isHidden = false
                }
                else{
                    cell2.HealthMapRatio.isHidden = true
                }
                
            }
            else{
                cell2.HealthFrequency.text = WHArray[indexPath.row]
                if indexPath.row == 5{
                    cell2.HealthMapRatio.isHidden = false
                }
                else{
                    cell2.HealthMapRatio.isHidden = true
                }
                
            }
            return cell2
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == HealthTableView{
            if SelectedCell == indexPath.row{
                if isCellSelected == false{
                    return 65
                }
                else{
                    return 350
                }
            }
            else{
                return 65
            }
        }
        else if tableView == VisualTrackingTableView{
            if indexPath.section == 0{
                return 170
            }
            else if indexPath.section == 1{
                return 135
            }
            else {
                return 140
            }
            
        }
            
        else{
            return 40
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        SelectedCell = indexPath.row
        if isCellSelected == false{
            isCellSelected = true
            HealthTableView.reloadData()
        }
        else{
            isCellSelected = false
            HealthTableView.reloadData()
        }
    }
}
