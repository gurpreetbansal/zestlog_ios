//
//  BookingViewController.swift
//  Zestlog
//
//  Created by Apple on 18/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class BookingTableCell : UITableViewCell{
    @IBOutlet var ContainerView: UIView!
 }

class BookingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func shadowView(yourView: UIView){
        
        yourView.layer.shadowColor = UIColor.lightGray.cgColor
        yourView.layer.shadowOpacity = 0.5
        yourView.layer.shadowOffset = .zero
        yourView.layer.shadowRadius = 5
    }
    
    @IBAction func BackTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

extension BookingViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookingTableCell", for: indexPath) as! BookingTableCell
        shadowView(yourView: cell.contentView)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}
