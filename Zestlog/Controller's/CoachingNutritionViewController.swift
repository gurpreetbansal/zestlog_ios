//
//  CoachingNutritionViewController.swift
//  Zestlog
//
//  Created by Apple on 27/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class NutritionDetailTableCell : UITableViewCell{
    
    @IBOutlet var Detailheader: UILabel!
    @IBOutlet var ContainerView: UIView!
    @IBOutlet var DragDownBtn: UIButton!
    
}

class addfoodTableCell : UITableViewCell{
    
}
class snapShootTableCell : UITableViewCell{
    
    @IBOutlet var fat1: UIImageView!
    @IBOutlet var fat2: UIImageView!
    @IBOutlet var fat3: UIImageView!
    @IBOutlet var CaloryName: UILabel!
}

class CoachingNutritionViewController: UIViewController {
    
    @IBOutlet var AddFood: UIButton!
    @IBOutlet var snapshot: UIButton!
    @IBOutlet var DetailsBtn: UIButton!
    @IBOutlet var Addlabel: UILabel!
    @IBOutlet var SnapshotLbl: UILabel!
    @IBOutlet var Detailslabel: UILabel!
    @IBOutlet var DetailTableView: UITableView!
    @IBOutlet var AddFoodTableView: UITableView!
    @IBOutlet var percentView: UIView!
    
    var isSelected : Bool = false
    var SelectedIndex = -1
    var SelectedButton = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        percentView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addFoodTap(_ sender: UIButton) {
        percentView.isHidden = true
        SelectedButton = "Food"
        DetailTableView.isHidden = true
        AddFoodTableView.isHidden = false
        AddFood.setTitleColor(#colorLiteral(red: 0.1606708467, green: 0.2882294655, blue: 0.6586917043, alpha: 1), for: .normal)
        snapshot.setTitleColor(.darkGray, for: .normal)
        DetailsBtn.setTitleColor(.darkGray, for: .normal)
        Addlabel.backgroundColor = #colorLiteral(red: 0.2903988063, green: 0.546885848, blue: 0.9998322129, alpha: 1)
        SnapshotLbl.backgroundColor = .clear
        Detailslabel.backgroundColor = .clear
        AddFoodTableView.reloadData()
    }
    
    @IBAction func SnapshotTap(_ sender: UIButton) {
        percentView.isHidden = false
        SelectedButton = "Snapshot"
        DetailTableView.isHidden = false
        AddFoodTableView.isHidden = true
        AddFood.setTitleColor(.darkGray, for: .normal)
        snapshot.setTitleColor(#colorLiteral(red: 0.1606708467, green: 0.2882294655, blue: 0.6586917043, alpha: 1), for: .normal)
        DetailsBtn.setTitleColor(.darkGray, for: .normal)
        Addlabel.backgroundColor = .clear
        SnapshotLbl.backgroundColor = #colorLiteral(red: 0.2903988063, green: 0.546885848, blue: 0.9998322129, alpha: 1)
        Detailslabel.backgroundColor = .clear
        DetailTableView.reloadData()
    }
    
    @IBAction func DetailsTap(_ sender: UIButton) {
         percentView.isHidden = true
        SelectedButton = "Details"
        DetailTableView.isHidden = false
        AddFoodTableView.isHidden = true
        AddFood.setTitleColor(.darkGray, for: .normal)
        snapshot.setTitleColor(.darkGray, for: .normal)
        DetailsBtn.setTitleColor(#colorLiteral(red: 0.1606708467, green: 0.2882294655, blue: 0.6586917043, alpha: 1), for: .normal)
        Addlabel.backgroundColor = .clear
        SnapshotLbl.backgroundColor = .clear
        Detailslabel.backgroundColor = #colorLiteral(red: 0.2903988063, green: 0.546885848, blue: 0.9998322129, alpha: 1)
        DetailTableView.reloadData()
    }
    
}

extension CoachingNutritionViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == AddFoodTableView{
            return 3
        }
        else{
            if SelectedButton == "Snapshot"{
                return 3
            }
            else{
                return nutritionDetailArray.count
            }
             
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == AddFoodTableView{
           let cell = AddFoodTableView.dequeueReusableCell(withIdentifier: "addfoodTableCell", for: indexPath) as! addfoodTableCell
            return cell
        }
       else{
            if SelectedButton == "Snapshot"{
                let cell = DetailTableView.dequeueReusableCell(withIdentifier: "snapShootTableCell", for: indexPath) as! snapShootTableCell
                cell.fat1.image = FoodImagearray[indexPath.row]
                cell.fat2.image = FoodImagearray[indexPath.row]
                cell.fat3.image = FoodImagearray[indexPath.row]
                cell.CaloryName.text = caloryarray[indexPath.row]
                 return cell
            }
            else{
                let cell = DetailTableView.dequeueReusableCell(withIdentifier: "NutritionDetailTableCell", for: indexPath) as! NutritionDetailTableCell
                cell.Detailheader.text = nutritionDetailArray[indexPath.row]
                if SelectedIndex == indexPath.row{
                    if isSelected == false{
                        cell.ContainerView.backgroundColor = #colorLiteral(red: 0.9256290793, green: 0.9283688068, blue: 0.9320294857, alpha: 1)
                        cell.DragDownBtn.setImage(#imageLiteral(resourceName: "DragDown"), for: .normal)
                    }
                    else{
                        cell.ContainerView.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
                        cell.DragDownBtn.setImage(#imageLiteral(resourceName: "dragUp"), for: .normal)
                    }
                }
                return cell
            }
            
        }
      
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == AddFoodTableView{
            return 130
        }
        else{
            if SelectedButton == "Snapshot"{
                return 120
            }
            else{
                if SelectedIndex == indexPath.row{
               if isSelected == false{
                  return 56
                    }
            else{
            return 190
        }
  }
            return 56
            }
          
        }
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        SelectedIndex = indexPath.row
        if isSelected == false{
            isSelected = true
        }
        else{
            isSelected = false
        }
        DetailTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if tableView == AddFoodTableView{
            if editingStyle == .insert {
              print("Deleted")

            }
        }
      
    }
}
