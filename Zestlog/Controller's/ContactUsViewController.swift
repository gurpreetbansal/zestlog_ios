//
//  ContactUsViewController.swift
//  Zestlog
//
//  Created by Apple on 14/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class contactTableCell : UITableViewCell{
    @IBOutlet var ContactBtn: DesignableButton!
    @IBOutlet var outerView: UIView!
    
}

class ContactUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension ContactUsViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactTableCell", for: indexPath) as? contactTableCell
        cell?.outerView.layer.shadowColor = UIColor.gray.cgColor
         cell?.outerView.layer.shadowOpacity = 0.3
         cell?.outerView.layer.shadowOffset = CGSize.zero
         cell?.outerView.layer.shadowRadius = 6
        if indexPath.row == 0{
           cell?.ContactBtn.setTitle("Contact help desk", for: .normal)
        }
        else{
           cell?.ContactBtn.setTitle("Contact Zestlog CEO directly", for: .normal)
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
    
}
