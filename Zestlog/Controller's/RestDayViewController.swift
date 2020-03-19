//
//  RestDayViewController.swift
//  Zestlog
//
//  Created by Apple on 12/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class RestDayViewController: UIViewController,UITextViewDelegate {

    @IBOutlet var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  TextView.text = "Type here..."
        TextView.textColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
      
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if TextView.text == "Type here..." {
            TextView.text = nil
            TextView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if TextView.text.isEmpty {
            TextView.text = "Type here..."
            TextView.textColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        }
    }
    
    @IBAction func backTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
