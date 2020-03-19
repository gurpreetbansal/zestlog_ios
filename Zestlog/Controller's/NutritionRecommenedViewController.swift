//
//  NutritionRecommenedViewController.swift
//  Zestlog
//
//  Created by Apple on 24/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class nutritionRecommenedTableCell : UITableViewCell{
    }

class RecipesTableCell : UITableViewCell{
    
}

@available(iOS 13.0, *)
class NutritionRecommenedViewController: UIViewController {
    @IBOutlet var searchLbl: UILabel!
    @IBOutlet var SearchLine: UILabel!
    @IBOutlet var favoritesLbl: UILabel!
    @IBOutlet var favoritesline: UILabel!
    @IBOutlet var coachlabel: UILabel!
    @IBOutlet var coachLine: UILabel!
    @IBOutlet var myMealsLabel: UILabel!
    @IBOutlet var myMealsLine: UILabel!
    @IBOutlet var RecipiesLabel: UILabel!
    @IBOutlet var recipiesLine: UILabel!
    @IBOutlet var NutritionTableView: UITableView!
    @IBOutlet var searchHeight: NSLayoutConstraint!
    
    
    var selectedData = "Search"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func searchBtnTap(_ sender: UIButton) {
        self.selectedData = "Search"
        searchHeight.constant = 45
        searchLbl.textColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
        SearchLine.backgroundColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
        favoritesLbl.textColor = .black
        favoritesline.backgroundColor = .clear
        coachlabel.textColor = .black
        coachLine.backgroundColor = .clear
        myMealsLabel.textColor = .black
        myMealsLine.backgroundColor = .clear
        RecipiesLabel.textColor = .black
        recipiesLine.backgroundColor = .clear
        NutritionTableView.reloadData()
    }
    
    @IBAction func favoritesBtnTap(_ sender: UIButton) {
        searchHeight.constant = 45
        searchLbl.textColor = .black
               SearchLine.backgroundColor = .clear
               favoritesLbl.textColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               favoritesline.backgroundColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               coachlabel.textColor = .black
               coachLine.backgroundColor = .clear
               myMealsLabel.textColor = .black
               myMealsLine.backgroundColor = .clear
               RecipiesLabel.textColor = .black
               recipiesLine.backgroundColor = .clear
        NutritionTableView.reloadData()
    }
    
    @IBAction func coachBtnTap(_ sender: UIButton) {
        searchHeight.constant = 45
        searchLbl.textColor = .black
               SearchLine.backgroundColor = .clear
               favoritesLbl.textColor = .black
               favoritesline.backgroundColor = .clear
               coachlabel.textColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               coachLine.backgroundColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               myMealsLabel.textColor = .black
               myMealsLine.backgroundColor = .clear
               RecipiesLabel.textColor = .black
               recipiesLine.backgroundColor = .clear
        NutritionTableView.reloadData()
    }
    @IBAction func MyMealsBtnTap(_ sender: UIButton) {
            searchHeight.constant = 120
               searchLbl.textColor = .black
               SearchLine.backgroundColor = .clear
               favoritesLbl.textColor = .black
               favoritesline.backgroundColor = .clear
               coachlabel.textColor = .black
               coachLine.backgroundColor = .clear
               myMealsLabel.textColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               myMealsLine.backgroundColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               RecipiesLabel.textColor = .black
               recipiesLine.backgroundColor = .clear
        NutritionTableView.reloadData()
    }
    
    @IBAction func RecipiesBtnTap(_ sender: UIButton) {
        searchHeight.constant = 45
        self.selectedData = "Recipes"
        searchLbl.textColor = .black
        SearchLine.backgroundColor = .clear
               favoritesLbl.textColor = .black
               favoritesline.backgroundColor = .clear
               coachlabel.textColor = .black
               coachLine.backgroundColor = .clear
               myMealsLabel.textColor = .black
               myMealsLine.backgroundColor = .clear
               RecipiesLabel.textColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
               recipiesLine.backgroundColor = #colorLiteral(red: 0.2268466949, green: 0.4166863561, blue: 0.701280117, alpha: 1)
        NutritionTableView.reloadData()
    }
    
}

@available(iOS 13.0, *)
extension NutritionRecommenedViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if selectedData == "Recipes"{
            return 5
        }
        else{
           return 3
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if selectedData == "Recipes"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipesTableCell", for: indexPath) as? RecipesTableCell
            
            return cell!
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "nutritionRecommenedTableCell", for: indexPath) as? nutritionRecommenedTableCell
                   
                   return cell!
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedData == "Recipes"{
            return 230
        }
        else{
            return 134
        }
        
    }
}
