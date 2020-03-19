//
//  sendStatusViewController.swift
//  Zestlog
//
//  Created by Apple on 19/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class shareTableCell : UITableViewCell{
    
    @IBOutlet var statusBtn: UIButton!
    
}

class sendStatusViewController: UIViewController {

    @IBOutlet var sendView: DesignableView!
    @IBOutlet var overlayView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendView.isHidden = true
        overlayView.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func SendBtnTap(_ sender: UIButton) {
        sendView.isHidden = false
        overlayView.isHidden = false
    }
    
    @IBAction func PopupSendTap(_ sender: DesignableButton) {
        sendView.isHidden = true
        overlayView.isHidden = true
        
    }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
     }
    
    
   
}

extension sendStatusViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shareTableCell", for: indexPath) as! shareTableCell
        if indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 6{
            cell.statusBtn.setImage(UIImage(named: "Rounded"), for: .normal)
        }
        else{
             cell.statusBtn.setImage(UIImage(named: "unRounded"), for: .normal)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

