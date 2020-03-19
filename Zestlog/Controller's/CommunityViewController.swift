//
//  CommunityViewController.swift
//  Zestlog
//
//  Created by Apple on 13/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit


class CommunityTableCell : UITableViewCell{
    
}

class ProfileCommunityTableCell : UITableViewCell{
    @IBOutlet var EditView: UIView!
 }

@available(iOS 13.0, *)
class CommunityViewController: UIViewController {
    
    @IBOutlet var AllText: UILabel!
    @IBOutlet var Alllabel: UILabel!
    @IBOutlet var FollowingText: UILabel!
    @IBOutlet var followingLbl: UILabel!
    @IBOutlet var funText: UILabel!
    @IBOutlet var FunLbl: UILabel!
    @IBOutlet var MotivationalText: UILabel!
    @IBOutlet var MotivationalLbl: UILabel!
    @IBOutlet var EducationText: UILabel!
    @IBOutlet var educationLbl: UILabel!
    @IBOutlet var profileText: UILabel!
    @IBOutlet var ProfileLbl: UILabel!
    @IBOutlet var DropUpBtn: UIButton!
    @IBOutlet var Containerview: UIStackView!
    @IBOutlet var profileCommunityTableView: UITableView!
    @IBOutlet var communityTableView: UITableView!
    @IBOutlet var AllProfileText: UILabel!
    @IBOutlet var allProfilelbl: UILabel!
    @IBOutlet var funProfileText: UILabel!
    @IBOutlet var FunProfilelbl: UILabel!
    @IBOutlet var motivationProfilelbl: UILabel!
    @IBOutlet var motivationProfileText: UILabel!
    @IBOutlet var educationProfileText: UILabel!
    @IBOutlet var educationProfilelbl: UILabel!
    @IBOutlet var ProfileView: UIView!
    
    var SelectedButton = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
         tabBarItem.selectedImage = #imageLiteral(resourceName: "SCommunity").withRenderingMode(.alwaysOriginal)
         tabBarItem.image = #imageLiteral(resourceName: "Community").withRenderingMode(.alwaysOriginal)
        Containerview.isHidden = true
        ProfileView.isHidden = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func AllBtnTap(_ sender: UIButton) {
        communityTableView.isHidden = false
        ProfileView.isHidden = true
        AllText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        Alllabel.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        FollowingText.textColor = .black
        followingLbl.backgroundColor = .clear
        funText.textColor = .black
        FunLbl.backgroundColor = .clear
        MotivationalText.textColor = .black
        MotivationalLbl.backgroundColor = .clear
        EducationText.textColor = .black
        educationLbl.backgroundColor = .clear
        profileText.textColor = .black
        ProfileLbl.backgroundColor = .clear
    }
    
    @IBAction func followingBtnTap(_ sender: UIButton) {
        communityTableView.isHidden = false
        ProfileView.isHidden = true
        AllText.textColor = .black
        Alllabel.backgroundColor = .clear
        FollowingText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        followingLbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        funText.textColor = .black
        FunLbl.backgroundColor = .clear
        MotivationalText.textColor = .black
        MotivationalLbl.backgroundColor = .clear
        EducationText.textColor = .black
        educationLbl.backgroundColor = .clear
        profileText.textColor = .black
        ProfileLbl.backgroundColor = .clear
    }
    
    @IBAction func FunBtnTap(_ sender: UIButton) {
        communityTableView.isHidden = false
        ProfileView.isHidden = true
        AllText.textColor = .black
        Alllabel.backgroundColor = .clear
        FollowingText.textColor = .black
        followingLbl.backgroundColor = .clear
        funText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        FunLbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        MotivationalText.textColor = .black
        MotivationalLbl.backgroundColor = .clear
        EducationText.textColor = .black
        educationLbl.backgroundColor = .clear
        profileText.textColor = .black
        ProfileLbl.backgroundColor = .clear
    }
    
    @IBAction func MotivationBtnTap(_ sender: UIButton) {
        communityTableView.isHidden = false
        ProfileView.isHidden = true
        AllText.textColor = .black
        Alllabel.backgroundColor = .clear
        FollowingText.textColor = .black
        followingLbl.backgroundColor = .clear
        funText.textColor = .black
        FunLbl.backgroundColor = .clear
        MotivationalText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        MotivationalLbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        EducationText.textColor = .black
        educationLbl.backgroundColor = .clear
        profileText.textColor = .black
        ProfileLbl.backgroundColor = .clear
    }
    
    @IBAction func educationBtnTap(_ sender: Any) {
        communityTableView.isHidden = false
        ProfileView.isHidden = true
        AllText.textColor = .black
        Alllabel.backgroundColor = .clear
        FollowingText.textColor = .black
        followingLbl.backgroundColor = .clear
        funText.textColor = .black
        FunLbl.backgroundColor = .clear
        MotivationalText.textColor = .black
        MotivationalLbl.backgroundColor = .clear
        EducationText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        educationLbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        profileText.textColor = .black
        ProfileLbl.backgroundColor = .clear
    }
    
   
    @IBAction func profileBtnTap(_ sender: UIButton) {
        communityTableView.isHidden = true
        ProfileView.isHidden = false
    }
    
    @IBAction func AllProfileBtn(_ sender: UIButton) {
         AllProfileText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        allProfilelbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
         funProfileText.textColor = .black
         FunProfilelbl.backgroundColor = .clear
         motivationProfileText.textColor = .black
         motivationProfilelbl.backgroundColor = .clear
         educationProfileText.textColor = .black
         educationProfilelbl.backgroundColor = .clear
    }
    
    @IBAction func funProfileBtn(_ sender: UIButton) {
        AllProfileText.textColor = .black
        allProfilelbl.backgroundColor = .clear
        funProfileText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        FunProfilelbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        motivationProfileText.textColor = .black
        motivationProfilelbl.backgroundColor = .clear
        educationProfileText.textColor = .black
        educationProfilelbl.backgroundColor = .clear
    }
    
    @IBAction func MotivationProfileBtn(_ sender: UIButton) {
      AllProfileText.textColor = .black
      allProfilelbl.backgroundColor = .clear
      funProfileText.textColor = .black
      FunProfilelbl.backgroundColor = .clear
      motivationProfileText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
      motivationProfilelbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
      educationProfileText.textColor = .black
      educationProfilelbl.backgroundColor = .clear
    }
    
    @IBAction func EducationProfileBtn(_ sender: UIButton) {
        AllProfileText.textColor = .black
        allProfilelbl.backgroundColor = .clear
        funProfileText.textColor = .black
        FunProfilelbl.backgroundColor = .clear
        motivationProfileText.textColor = .black
        motivationProfilelbl.backgroundColor = .clear
        educationProfileText.textColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
        educationProfilelbl.backgroundColor = #colorLiteral(red: 0.3907886744, green: 0.5988508463, blue: 0.9982542396, alpha: 1)
    }
    
    @IBAction func DropUpTap(_ sender: UIButton) {
        if Containerview.isHidden == true{
            Containerview.isHidden = false
            DropUpBtn.setImage(#imageLiteral(resourceName: "DropdownBlue"), for: .normal)
        }
        else{
            Containerview.isHidden = true
            DropUpBtn.setImage(#imageLiteral(resourceName: "DropUpBlue"), for: .normal)
        }
    }
    
    @IBAction func MoreOptionBtnTap(_ sender: UIButton) {
        let index = IndexPath(row: SelectedButton, section: 0)
        let cell = profileCommunityTableView.cellForRow(at: index) as! ProfileCommunityTableCell
        if cell.EditView.isHidden == true{
            cell.EditView.isHidden = false
        }
        else{
            cell.EditView.isHidden = true
        }
    }
    
    
    @IBAction func AddPostTap(_ sender: UIButton) {
        self.performPushSeguefromController(identifier: "PostViewController")
    }
    @IBAction func MessageBtnTap(_ sender: UIButton) {
        self.performPushSeguefromController(identifier: "MessageViewController")
    }
    
    @IBAction func DownloadBtntap(_ sender: UIButton) {
        self.performPushSeguefromController(identifier: "ClubComuniteRecievingViewController")
    }
    
    @IBAction func notificationTap(_ sender: UIButton) {
        performPushSeguefromController(identifier: "NotificationViewController")
    }
    
    @IBAction func shareBtnTap(_ sender: UIButton) {
        performPushSeguefromController(identifier: "ClubCommunitySendingViewController")
    }
    
}

@available(iOS 13.0, *)
extension CommunityViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == communityTableView{
            return 6
        }
        else{
            return 6
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == communityTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CommunityTableCell", for: indexPath) as! CommunityTableCell
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCommunityTableCell", for: indexPath) as! ProfileCommunityTableCell
            cell.EditView.isHidden = true
              SelectedButton = indexPath.row
            return cell
        }
      
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == communityTableView{
            return 334
        }
        else{
            return 334
        }
        
    }
    
}
