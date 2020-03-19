//
//  SignUpViewController.swift
//  Zestlog
//
//  Created by Apple on 11/02/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var maleBtn: DesignableButton!
    @IBOutlet var femaleBtn: DesignableButton!
    @IBOutlet var checkimage: UIButton!
    @IBOutlet var dateTextField: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view2.isHidden = true
        //show date picker
        showDatePicker()
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextBtnTap(_ sender: DesignableButton) {
        self.view1.isHidden = true
        self.view2.isHidden = false
    }
    
    @IBAction func backBtnTap(_ sender: DesignableButton) {
        self.view1.isHidden = false
        self.view2.isHidden = true
    }
    
    @IBAction func MainBackBtnTap(_ sender: Any) {
  self.navigationController?.popViewController(animated: true)
    }
    @IBAction func maleBtnTap(_ sender: DesignableButton) {
        maleBtn.backgroundColor = #colorLiteral(red: 0.9301870465, green: 0.3937199712, blue: 0.2112400234, alpha: 1)
        maleBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        femaleBtn.backgroundColor = .clear
        femaleBtn.setTitleColor(.darkGray, for: .normal)
    }
    
    @IBAction func femaleBtnTap(_ sender: DesignableButton) {
        maleBtn.backgroundColor = .clear
        maleBtn.setTitleColor(.darkGray, for: .normal)
        femaleBtn.backgroundColor = #colorLiteral(red: 0.9301870465, green: 0.3937199712, blue: 0.2112400234, alpha: 1)
        femaleBtn.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func checkTermsBtnTap(_ sender: UIButton) {
        if checkimage.currentImage == UIImage(named: "unSelected"){
            checkimage.setImage(#imageLiteral(resourceName: "selected"), for: .normal)
        }
        else{
            checkimage.setImage(#imageLiteral(resourceName: "unSelected"), for: .normal)
        }
        
    }
    //Date picker
    func showDatePicker(){
       //Formate Date
       datePicker.datePickerMode = .date

      //ToolBar
      let toolbar = UIToolbar();
      toolbar.sizeToFit()
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
     let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));

    toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)

     dateTextField.inputAccessoryView = toolbar
     dateTextField.inputView = datePicker

    }

     @objc func donedatePicker(){

      let formatter = DateFormatter()
      formatter.dateFormat = "dd/MM/yyyy"
      dateTextField.text = formatter.string(from: datePicker.date)
      self.view.endEditing(true)
    }

    @objc func cancelDatePicker(){
       self.view.endEditing(true)
     }
}
