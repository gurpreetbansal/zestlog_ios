//
//  ChatVC.swift
//  fashLOCO
//
//  Created by Ashish_IOS on 4/26/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ChatingTableViewCell: UITableViewCell {
    
    //receiver
    
    @IBOutlet weak var ReciverDateView: UIView!
    
    @IBOutlet weak var recDateHeight: NSLayoutConstraint!
    @IBOutlet weak var recieverDateView: UIView!
    
    
    @IBOutlet var receiverPlayBtn: UIButton!
    @IBOutlet var receiverImgViewHeight: NSLayoutConstraint!
    @IBOutlet var senderImgViewHeight: NSLayoutConstraint!
    @IBOutlet weak var receiverStartChatDateLbl: UILabel!
    
    @IBOutlet var senderPlayBtn: UIButton!
    
    @IBOutlet weak var receiverRecImgView: UIImageView!
    @IBOutlet weak var receiverRecTxtView: UILabel!
    
    @IBOutlet weak var receiverMsgrectimeLbl: UILabel!
    
    
    
    @IBOutlet weak var NavigationViewHeight: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}


@available(iOS 11.0, *)
class ChatVC: UIViewController,UIGestureRecognizerDelegate {
    
    var selectedIndexPath:IndexPath!
    var receiverCell = ChatingTableViewCell()
     private var longPressGestureRecognizer:UILongPressGestureRecognizer!
    
    @IBOutlet weak var NavigationViewHeight: NSLayoutConstraint!
    @IBOutlet var deleteChat: UIButton!
    @IBOutlet var deleteChatView: UIView!
    @IBOutlet var chatTblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // addNavigationBarImage()
//        let screenSize = UIScreen.main.bounds
//        if screenSize.height <= 736{
//            NavigationViewHeight.constant = 64
//        }else{
//            NavigationViewHeight.constant = 88
//        }
        
        self.navigationController?.isNavigationBarHidden = true
        
        // Do any additional setup after loading the view.
    }
   
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    @IBAction func crossBtnTap(_ sender: Any) {
        deleteChatView.isHidden = true
     //   let cell = chatTblView.cellForRow(at: selectedIndexPath)
       // cell?.backgroundColor = UIColor.clear
       //  longPressGestureRecognizer.isEnabled = !longPressGestureRecognizer.isEnabled
    }
    @IBAction func backBtnTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
@available(iOS 11.0, *)
extension ChatVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 || indexPath.row == 2 {
            receiverCell = tableView.dequeueReusableCell(withIdentifier: "Receiver", for: indexPath) as! ChatingTableViewCell
            receiverCell.selectionStyle = .none
            receiverCell.ReciverDateView.isHidden = true
            return receiverCell
            
        } else {
            let  cell = tableView.dequeueReusableCell(withIdentifier: "Sender", for: indexPath) as! ChatingTableViewCell
          cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
 
   
}
