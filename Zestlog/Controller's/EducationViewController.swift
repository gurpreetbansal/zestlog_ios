//
//  EducationViewController.swift
//  Zestlog
//
//  Created by Apple on 13/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class EducationTableCell : UITableViewCell{
    
}

class CategoryTableCell : UITableViewCell{
    
}

class EducationViewController: UIViewController {

    @IBOutlet var CategoryTableView: UITableView!
    @IBOutlet var overlayView: UIView!
    @IBOutlet var categoryView: DesignableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         tabBarItem.selectedImage = #imageLiteral(resourceName: "SScience").withRenderingMode(.alwaysOriginal)
         tabBarItem.image = #imageLiteral(resourceName: "Science").withRenderingMode(.alwaysOriginal)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        categoryView.isHidden = true
        overlayView.isHidden = true
    }
    
    
    @IBAction func SidemenuTap(_ sender: UIButton) {
        categoryView.isHidden = false
        overlayView.isHidden = false
    }
    
     @IBAction func crossBtnTap(_ sender: UIButton) {
        categoryView.isHidden = true
        overlayView.isHidden = true
    }
    
    @IBAction func searchTap(_ sender: DesignableButton) {
        categoryView.isHidden = true
        overlayView.isHidden = true
    }
    
}

extension EducationViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == CategoryTableView{
            return 7
        }
        else{
           return 5
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == CategoryTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableCell", for: indexPath)as! CategoryTableCell
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "EducationTableCell", for: indexPath) as! EducationTableCell
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == CategoryTableView{
            return 30
        }
        else{
            return 230
        }
       
    }
    
    
}
