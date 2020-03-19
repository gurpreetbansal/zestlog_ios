//  DesignableClass.swift
//  fashLOCO
//
//  Created by apple on 24/04/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation
import UIKit
//MARK:===============DesignableButton=====================
@IBDesignable class DesignableButton: UIButton {
    
    @IBInspectable var CornerRadius :CGFloat = 0.0 {
        didSet{self.layer.cornerRadius = CornerRadius}
    }
    
    @IBInspectable var BorderWidth :CGFloat = 0.0 {
         didSet{self.layer.borderWidth = BorderWidth}
    }
   @IBInspectable var BorderColor :UIColor = .clear {
        didSet{ self.layer.borderColor = BorderColor.cgColor}
    }
}
//MARK:===============DesignableView=====================
@IBDesignable class DesignableView: UIView{
    @IBInspectable var CornerRadius: CGFloat = 0.0{
        didSet{self.layer.cornerRadius = CornerRadius}
    }
    @IBInspectable var BorderWidth :CGFloat = 0.0 {
        didSet{self.layer.borderWidth = BorderWidth}
    }
    @IBInspectable var BorderColor :UIColor = .clear {
        didSet{ self.layer.borderColor = BorderColor.cgColor}
    }
}

//MARK:===============DesignableTextField=====================
@IBDesignable class DesignableTextField: UITextField{
    @IBInspectable var CornerRadius: CGFloat = 0.0{
        didSet{self.layer.cornerRadius = CornerRadius}
    }
    @IBInspectable var BorderWidth :CGFloat = 0.0 {
        didSet{self.layer.borderWidth = BorderWidth}
    }
    @IBInspectable var BorderColor :UIColor = .clear {
        didSet{ self.layer.borderColor = BorderColor.cgColor}
    }
    /// Sets the placeholder color
    @IBInspectable public var placeholderColor: UIColor? {
        didSet {
            let placeholderStr = placeholder ?? ""
            attributedPlaceholder = NSAttributedString(string: placeholderStr, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor as Any])
        }
    }
    
    public override var placeholder: String? {
        didSet {
            let placeholderStr = placeholder ?? ""
            attributedPlaceholder = NSAttributedString(string: placeholderStr, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor as Any])
        }
    }
}

//MARK:===============DesignableTextView=====================
@IBDesignable class DesignableTextView: UITextView{
    @IBInspectable var CornerRadius: CGFloat = 0.0{
        didSet{self.layer.cornerRadius = CornerRadius}
    }
    @IBInspectable var BorderWidth :CGFloat = 0.0 {
        didSet{self.layer.borderWidth = BorderWidth}
    }
    @IBInspectable var BorderColor :UIColor = .clear {
        didSet{ self.layer.borderColor = BorderColor.cgColor}
    }
}

//MARK:===============DesignableImage=====================

@IBDesignable class DesignableImage: UIImageView{
    @IBInspectable var CornerRadius: CGFloat = 0.0{
        didSet{self.layer.cornerRadius = CornerRadius/2}
    }
    @IBInspectable var BorderWidth :CGFloat = 0.0 {
        didSet{self.layer.borderWidth = BorderWidth}
    }
    @IBInspectable var BorderColor :UIColor = .clear {
        didSet{ self.layer.borderColor = BorderColor.cgColor}
    }
 }

//MARK:===============DesignableLable=====================

@IBDesignable class DesignableLabel: UILabel{
    @IBInspectable var CornerRadius: CGFloat = 0.0{
        didSet{self.layer.cornerRadius = CornerRadius/2}
    }
    @IBInspectable var BorderWidth :CGFloat = 0.0 {
        didSet{self.layer.borderWidth = BorderWidth}
    }
    @IBInspectable var BorderColor :UIColor = .clear {
        didSet{ self.layer.borderColor = BorderColor.cgColor}
    }
}
//MARK:===============DesignableProgressBar=====================

@IBDesignable class DesignableProgressBar: UIProgressView{
    @IBInspectable var CornerRadius: CGFloat = 0.0{
        didSet{self.layer.cornerRadius = CornerRadius/2}
    }
}
