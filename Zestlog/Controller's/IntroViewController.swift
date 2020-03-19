//
//  IntroViewController.swift
//  Zestlog
//
//  Created by Apple on 11/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class IntroCollectionCell : UICollectionViewCell{
    
    @IBOutlet var introView: UIView!
    @IBOutlet var introImage: UIImageView!
    @IBOutlet var introLabel: UILabel!
    
}

class IntroViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var introCollectionView: UICollectionView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextTap(_ sender: UIButton) {
        let gotowelcome = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController
        self.navigationController?.pushViewController(gotowelcome!, animated: true)
    }
    

    @IBAction func skipTap(_ sender: UIButton) {
        let gotowelcome = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController
        self.navigationController?.pushViewController(gotowelcome!, animated: true)
    }
    
}

extension IntroViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UIScrollViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return IntroArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IntroCollectionCell", for: indexPath) as! IntroCollectionCell
        
        
        cell.introImage.image = IntroImage[indexPath.row]
        cell.introLabel.text = IntroArray[indexPath.row]
        cell.introView.backgroundColor = IntroColour[indexPath.row]
        introCollectionView.backgroundColor = IntroColour[indexPath.row]
        mainView.backgroundColor = IntroColour[indexPath.row]
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: mainView.bounds.width, height: 500);

    }
    
     //MARK: UIScrollView Delegate
       func scrollViewDidScroll(_ scrollView: UIScrollView) {
           let visibleRect = CGRect(origin: introCollectionView.contentOffset, size: introCollectionView.bounds.size)
           let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
           if let index = introCollectionView.indexPathForItem(at: visiblePoint)
           {
               print(index.row)
            introCollectionView.backgroundColor = IntroColour[index.row]
            mainView.backgroundColor = IntroColour[index.row]
               self.pageControl.currentPage = Int(index.row)
               
           }
       }
    
}
