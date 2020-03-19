//
//  CoachingViewController.swift
//  Zestlog
//
//  Created by Apple on 13/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CoachingBodySechduleCell : UITableViewCell{
    
    @IBOutlet var messageSign: UIButton!
    @IBOutlet var upperBody: UIButton!
    @IBOutlet var DaysName: UILabel!
    @IBOutlet var DateText: UILabel!
    @IBOutlet var excerciseStatus: UIButton!
}

class MissionSechudleCell : UITableViewCell{
    
}

class MessageTableCell : UITableViewCell{
    
}

class CalenderCell : UITableViewCell{
    
    @IBOutlet var ongoingBtn: UIButton!
}

class notesTableCell : UITableViewCell{
    
}

class specializationCollectionCell : UICollectionViewCell{
    
    @IBOutlet var SpecializationText: UILabel!
}

class CoachingViewController: UIViewController {
    
    @IBOutlet var BodySignImage: UIImageView!
    @IBOutlet var DietImage: UIImageView!
    @IBOutlet var MissionImage: UIImageView!
    @IBOutlet var calenderImage: UIImageView!
    @IBOutlet var messageImage: UIImageView!
    @IBOutlet var NotesImage: UIImageView!
    @IBOutlet var WorkingsechuduleTable: UITableView!
    @IBOutlet var Searchview: UIView!
    @IBOutlet var CalenderView: UIView!
    @IBOutlet var NotesTableView: UITableView!
    @IBOutlet var NotesView: UIView!
    @IBOutlet var specializationView: UIView!
    @IBOutlet var MenuHeight: NSLayoutConstraint!
    @IBOutlet var alreadyPurchased: UIButton!
    @IBOutlet var purchasedNewLine: UILabel!
    @IBOutlet var purchasedNew: UIButton!
    @IBOutlet var alreadyPurchaseLine: UILabel!
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var menuView: UIView!
    @IBOutlet var DateView: UIView!
    @IBOutlet var searchView: UIView!
    @IBOutlet var alreadyPurchasedView: UIView!
    @IBOutlet var onGoingView: UIView!
    @IBOutlet var submissionView: UIView!
    
    
    var CoachingStatus = ""
    override func viewDidLoad() {
        super.viewDidLoad()
         tabBarItem.selectedImage = #imageLiteral(resourceName: "SCoaching").withRenderingMode(.alwaysOriginal)
         tabBarItem.image = #imageLiteral(resourceName: "Coaching").withRenderingMode(.alwaysOriginal)
        self.NotesView.isHidden = true
        self.Searchview.isHidden = true
        self.CalenderView.isHidden = true
        self.specializationView.isHidden = true
      shadowView(yourView: onGoingView)
        shadowView(yourView: submissionView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if SingletonClass.sharedInstance.isComeFrom == "NextTap"{
            backBtn.isHidden = false
            MenuHeight.constant = 0
            menuView.isHidden = true
            DateView.isHidden = true
            self.CoachingStatus = "Notes"
            self.NotesView.isHidden = false
            self.Searchview.isHidden = true
            self.CalenderView.isHidden = true
            searchView.isHidden = false
            NotesTableView.isHidden = false
            alreadyPurchasedView.isHidden = true
            SingletonClass.sharedInstance.isComeFrom = ""
            NotesTableView.reloadData()
            
        }
        else{
            backBtn.isHidden = true
            MenuHeight.constant = 70
            menuView.isHidden = false
            DateView.isHidden = false
            self.NotesView.isHidden = true
            self.Searchview.isHidden = true
            self.CalenderView.isHidden = true
            self.specializationView.isHidden = true
        }
    }
    
    func shadowView(yourView: UIView){
        
        yourView.layer.shadowColor = UIColor.lightGray.cgColor
        yourView.layer.shadowOpacity = 0.5
        yourView.layer.shadowOffset = .zero
        yourView.layer.shadowRadius = 5
    }
    
    @IBAction func backTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func BodySignTap(_ sender: UIButton) {
        self.NotesView.isHidden = true
        self.Searchview.isHidden = true
         self.CalenderView.isHidden = true
        self.CoachingStatus = "Work"
        BodySignImage.image = #imageLiteral(resourceName: "Selecteddumble")
        DietImage.image = #imageLiteral(resourceName: "UnselectedDiet")
        MissionImage.image = #imageLiteral(resourceName: "UnMission")
        calenderImage.image = #imageLiteral(resourceName: "Unalender")
        messageImage.image = #imageLiteral(resourceName: "unMessage")
        NotesImage.image = #imageLiteral(resourceName: "unNotes")
        WorkingsechuduleTable.reloadData()
    }
    
    @IBAction func DietSechduleTap(_ sender: UIButton) {
        self.NotesView.isHidden = true
        self.Searchview.isHidden = true
        self.CalenderView.isHidden = true
        self.CoachingStatus = "Diet"
        BodySignImage.image = #imageLiteral(resourceName: "UnselectedDumble")
               DietImage.image = #imageLiteral(resourceName: "Selecteddiet")
               MissionImage.image = #imageLiteral(resourceName: "UnMission")
               calenderImage.image = #imageLiteral(resourceName: "Unalender")
               messageImage.image = #imageLiteral(resourceName: "unMessage")
               NotesImage.image = #imageLiteral(resourceName: "unNotes")
        WorkingsechuduleTable.reloadData()
    }
    
    @IBAction func missionTap(_ sender: UIButton) {
        self.NotesView.isHidden = true
        self.Searchview.isHidden = false
        self.CalenderView.isHidden = true
        self.CoachingStatus = "Mission"
         BodySignImage.image = #imageLiteral(resourceName: "UnselectedDumble")
               DietImage.image = #imageLiteral(resourceName: "UnselectedDiet")
               MissionImage.image = #imageLiteral(resourceName: "SMission")
               calenderImage.image = #imageLiteral(resourceName: "Unalender")
               messageImage.image = #imageLiteral(resourceName: "unMessage")
               NotesImage.image = #imageLiteral(resourceName: "unNotes")
        WorkingsechuduleTable.reloadData()
    }
    
    @IBAction func calenderTap(_ sender: UIButton) {
        self.CoachingStatus = "Calender"
        self.NotesView.isHidden = true
        self.Searchview.isHidden = true
        self.CalenderView.isHidden = false
               BodySignImage.image = #imageLiteral(resourceName: "UnselectedDumble")
               DietImage.image = #imageLiteral(resourceName: "UnselectedDiet")
               MissionImage.image = #imageLiteral(resourceName: "UnMission")
               calenderImage.image = #imageLiteral(resourceName: "SCalender")
               messageImage.image = #imageLiteral(resourceName: "unMessage")
               NotesImage.image = #imageLiteral(resourceName: "unNotes")
        WorkingsechuduleTable.reloadData()
    }
    @IBAction func messageTap(_ sender: UIButton) {
         self.CoachingStatus = "Message"
         self.NotesView.isHidden = true
         self.Searchview.isHidden = false
         self.CalenderView.isHidden = true
               BodySignImage.image = #imageLiteral(resourceName: "UnselectedDumble")
               DietImage.image = #imageLiteral(resourceName: "UnselectedDiet")
               MissionImage.image = #imageLiteral(resourceName: "UnMission")
               calenderImage.image = #imageLiteral(resourceName: "Unalender")
               messageImage.image = #imageLiteral(resourceName: "Message-1")
               NotesImage.image = #imageLiteral(resourceName: "unNotes")
        WorkingsechuduleTable.reloadData()
    }
    
    @IBAction func NotesTap(_ sender: UIButton) {
        self.CoachingStatus = "Notes"
        self.NotesView.isHidden = false
        self.Searchview.isHidden = true
        self.CalenderView.isHidden = true
        BodySignImage.image = #imageLiteral(resourceName: "UnselectedDumble")
               DietImage.image = #imageLiteral(resourceName: "UnselectedDiet")
               MissionImage.image = #imageLiteral(resourceName: "UnMission")
               calenderImage.image = #imageLiteral(resourceName: "Unalender")
               messageImage.image = #imageLiteral(resourceName: "unMessage")
               NotesImage.image = #imageLiteral(resourceName: "SNoptes")
        NotesTableView.reloadData()
    }
    
    @IBAction func purchaseNewTap(_ sender: UIButton) {
        purchasedNew.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        purchasedNewLine.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        alreadyPurchased.setTitleColor(.darkGray, for: .normal)
        alreadyPurchaseLine.backgroundColor = .clear
        searchView.isHidden = false
        NotesTableView.isHidden = false
        alreadyPurchasedView.isHidden = true
    }
    
    @IBAction func alreadyPurchaseTap(_ sender: UIButton) {
        purchasedNew.setTitleColor(.darkGray, for: .normal)
        purchasedNewLine.backgroundColor = .clear
        alreadyPurchased.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        alreadyPurchaseLine.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        searchView.isHidden = true
        NotesTableView.isHidden = true
        alreadyPurchasedView.isHidden = false
    }
    
    @IBAction func SelectCoachTap(_ sender: DesignableButton) {
        self.performPushSeguefromController(identifier: "YourCoachViewController")
    }
    
}

extension CoachingViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == NotesTableView{
            return 4
        }
        else{
            if CoachingStatus == "Mission"
                  {
                      return 4
                  }
                  else if CoachingStatus == "Message"{
                      return 3
                  }
                  else if CoachingStatus == "Calender"{
                      return 4
                  }
                  else{
                      return 7
                  }
        }
      
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == NotesTableView{
            let cell = NotesTableView.dequeueReusableCell(withIdentifier: "notesTableCell", for: indexPath) as! notesTableCell
            return cell
        }
        else{
            if CoachingStatus == "Mission"{
                 let cell = tableView.dequeueReusableCell(withIdentifier: "MissionSechudleCell", for: indexPath) as?  MissionSechudleCell
                 return cell!
             }
             else if CoachingStatus == "Message"{
                let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableCell", for: indexPath) as?  MessageTableCell
                 return cell!
             }
                 else if CoachingStatus == "Calender"{
                    let cell = tableView.dequeueReusableCell(withIdentifier: "CalenderCell", for: indexPath) as?  CalenderCell
                 if indexPath.row == 0 || indexPath.row == 2{
                     cell?.ongoingBtn.setImage(#imageLiteral(resourceName: "ongoing"), for: .normal)
                 }
                 else{
                     cell?.ongoingBtn.setImage(#imageLiteral(resourceName: "Completed"), for: .normal)
                 }
                     return cell!
                 }
             else{
             let cell = tableView.dequeueReusableCell(withIdentifier: "CoachingBodySechduleCell", for: indexPath) as? CoachingBodySechduleCell
             cell?.DaysName.text = ExcerCiseDay[indexPath.row]
             if indexPath.row == 0 || indexPath.row == 2{
                 cell?.messageSign.isHidden = false
             }
             else{
                 cell?.messageSign.isHidden = true
             }
             if CoachingStatus == "Work"{
                 cell?.DateText.isHidden = false
                 cell?.excerciseStatus.isHidden = false
                 cell?.upperBody.isHidden = false
             }
             else if CoachingStatus == "Diet"{
                  cell?.excerciseStatus.isHidden = true
                 cell?.upperBody.isHidden = true
             }
            return cell!
             }
        }
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == NotesTableView{
            return 105
        }
        else{
            if CoachingStatus == "Mission"{
                       return 50
                   }
                   else if CoachingStatus == "Message"{
                       return 45
                   }
                       else if CoachingStatus == "Calender"{
                           return 50
                       }
                   else{
                       return 72
                   }
        }
       
     }
    }

extension CoachingViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SpecilizationArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "specializationCollectionCell", for: indexPath) as? specializationCollectionCell
        cell?.SpecializationText.text = SpecilizationArray[indexPath.row]
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView,
                layout collectionViewLayout: UICollectionViewLayout,
                sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 20)/2, height: 50)
    }
    
}
