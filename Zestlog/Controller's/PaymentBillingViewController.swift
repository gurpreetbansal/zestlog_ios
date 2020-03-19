//
//  PaymentBillingViewController.swift
//  Zestlog
//
//  Created by Apple on 14/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CardTableCell : UITableViewCell{
    
    @IBOutlet var cardImage: UIImageView!
}

class BookingHistoryCell : UITableViewCell{
    
}

class PaymentBillingViewController: UIViewController {
    
    @IBOutlet var paymentMethod: UIButton!
    @IBOutlet var BillingHistory: UIButton!
    @IBOutlet var paymentline: UILabel!
    @IBOutlet var BillingHistoryLine: UILabel!
   // @IBOutlet var addPaymentMethod: DesignableButton!
    @IBOutlet var tableViewHeight: NSLayoutConstraint!
    @IBOutlet var paymentTableView: UITableView!
    
    var myCellname = "CardDetail"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    @IBAction func paymentMethodTap(_ sender: UIButton) {
        myCellname = "CardDetail"
        paymentMethod.setTitleColor(#colorLiteral(red: 0.1696953475, green: 0.3147258162, blue: 0.6696116924, alpha: 1), for: .normal)
        paymentline.backgroundColor = #colorLiteral(red: 0.1696953475, green: 0.3147258162, blue: 0.6696116924, alpha: 1)
        BillingHistory.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
        BillingHistoryLine.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        paymentTableView.reloadData()
    }
    
    @IBAction func BillingHistoryTap(_ sender: UIButton) {
        myCellname = "BillingDetail"
        paymentMethod.setTitleColor(#colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1), for: .normal)
        paymentline.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        BillingHistory.setTitleColor(#colorLiteral(red: 0.1696953475, green: 0.3147258162, blue: 0.6696116924, alpha: 1), for: .normal)
        BillingHistoryLine.backgroundColor = #colorLiteral(red: 0.1696953475, green: 0.3147258162, blue: 0.6696116924, alpha: 1)
        paymentTableView.reloadData()
        
    }
    
    
    @IBAction func backTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addMethod(_ sender: DesignableButton) {
        performPushSeguefromController(identifier: "addCardViewController")
    }
}

extension PaymentBillingViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if myCellname == "CardDetail"{
            return cardArray.count
        }
        else{
            return 9
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if myCellname == "CardDetail"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CardTableCell", for: indexPath) as? CardTableCell
                  cell?.cardImage.image = cardArray[indexPath.row]
            tableViewHeight.constant = tableView.contentSize.height / 5
            //addPaymentMethod.isHidden = false
                  return cell!
        }
        else{
          let cell = tableView.dequeueReusableCell(withIdentifier: "BookingHistoryCell", for: indexPath) as? BookingHistoryCell
             tableViewHeight.constant = tableView.contentSize.height
            //addPaymentMethod.isHidden = true
            
            return cell!
        }
      
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if  myCellname == "CardDetail"{
           return 90
        }
        else{
            return 60
        }
        
    }
    
    
    
}
