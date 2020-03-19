//
//  CoachInformationViewController.swift
//  Zestlog
//
//  Created by Apple on 16/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class CoachInfoCell : UICollectionViewCell{
    
    @IBOutlet var WeightImage: UIImageView!
}

class CoachInformationViewController: UIViewController {

    @IBOutlet var trainingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        shadowView(yourView: trainingView)
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

extension CoachInformationViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoachInfoCell", for: indexPath) as! CoachInfoCell
        cell.WeightImage.image = CoachInfoarray[indexPath.row]
        if indexPath.row == 2{
            shadowView(yourView: cell.WeightImage)
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 100)
    }
    
    
}
