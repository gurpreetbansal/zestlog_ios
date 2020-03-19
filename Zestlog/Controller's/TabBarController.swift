//
//  TabBarController.swift
//  KitoPlastic
//
//  Created by apple on 06/05/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit



@available(iOS 11.0, *)
class TabBarController: UIViewController,UITextViewDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func addTabBarView(tap: Int) {
        selectedIndex = tap
        buttons[selectedIndex].isSelected = true
        didTapOnBar(buttons[selectedIndex])
    }
    
  
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var SelfcareViewController = UIViewController()
    var TrackingViewController = UIViewController()
    var CommunityViewController = UIViewController()
    var CoachingViewController = UIViewController()
    var ScienceViewController = UIViewController()
    
    var viewControllers = [UIViewController]()
    var selectedIndex: Int = 0
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        SelfcareViewController = storyboard.instantiateViewController(withIdentifier: "SelfCareViewController")
        TrackingViewController = storyboard.instantiateViewController(withIdentifier: "TrackingViewController")
        CommunityViewController = storyboard.instantiateViewController(withIdentifier: "CommunityViewController")
        CoachingViewController = storyboard.instantiateViewController(withIdentifier: "CoachingViewController")
         ScienceViewController = storyboard.instantiateViewController(withIdentifier: "EducationViewController")
        
        viewControllers = [SelfcareViewController,TrackingViewController,CommunityViewController,CoachingViewController,ScienceViewController]
        //Set the Initial Tab when the App Starts.
        buttons[selectedIndex].isSelected = true
        didTapOnBar(buttons[selectedIndex])
        buttons[selectedIndex].setImage(#imageLiteral(resourceName: "SSelfCare"), for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
  
    @IBAction func didTapOnBar(_ sender: UIButton) {
        //Get Access to the Previous and Current Tab Button.
        if sender.tag == 0{
             buttons[0].setImage(#imageLiteral(resourceName: "SSelfCare"), for: .normal)
            buttons[1].setImage(#imageLiteral(resourceName: "Tracking"), for: .normal)
            buttons[2].setImage(#imageLiteral(resourceName: "Community"), for: .normal)
            buttons[3].setImage(#imageLiteral(resourceName: "Coaching"), for: .normal)
            buttons[4].setImage(#imageLiteral(resourceName: "Science"), for: .normal)
            
        } else if sender.tag == 1{
             buttons[0].setImage(#imageLiteral(resourceName: "SelfCare"), for: .normal)
                       buttons[1].setImage(#imageLiteral(resourceName: "STracking"), for: .normal)
                       buttons[2].setImage(#imageLiteral(resourceName: "Community"), for: .normal)
                       buttons[3].setImage(#imageLiteral(resourceName: "Coaching"), for: .normal)
                       buttons[4].setImage(#imageLiteral(resourceName: "Science"), for: .normal)
        } else if sender.tag == 2{
            buttons[0].setImage(#imageLiteral(resourceName: "SelfCare"), for: .normal)
                       buttons[1].setImage(#imageLiteral(resourceName: "Tracking"), for: .normal)
                       buttons[2].setImage(#imageLiteral(resourceName: "SCommunity"), for: .normal)
                       buttons[3].setImage(#imageLiteral(resourceName: "Coaching"), for: .normal)
                       buttons[4].setImage(#imageLiteral(resourceName: "Science"), for: .normal)
        } else if sender.tag == 3{
             buttons[0].setImage(#imageLiteral(resourceName: "SelfCare"), for: .normal)
                       buttons[1].setImage(#imageLiteral(resourceName: "Tracking"), for: .normal)
                       buttons[2].setImage(#imageLiteral(resourceName: "Community"), for: .normal)
                       buttons[3].setImage(#imageLiteral(resourceName: "SCoaching"), for: .normal)
                       buttons[4].setImage(#imageLiteral(resourceName: "Science"), for: .normal)
        
        }
        else if sender.tag == 4{
            buttons[0].setImage(#imageLiteral(resourceName: "SelfCare"), for: .normal)
                       buttons[1].setImage(#imageLiteral(resourceName: "Tracking"), for: .normal)
                       buttons[2].setImage(#imageLiteral(resourceName: "Community"), for: .normal)
                       buttons[3].setImage(#imageLiteral(resourceName: "Coaching"), for: .normal)
                       buttons[4].setImage(#imageLiteral(resourceName: "SScience"), for: .normal)
        }
        
            selectedIndex = sender.tag
        let previousIndex = selectedIndex
        
        //Remove the Previous ViewController and Set Button State.
        buttons[previousIndex].isSelected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMove(toParent: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParent()
        
        //Add the New ViewController and Set Button State.
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChild(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
  }

