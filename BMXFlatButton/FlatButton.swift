//
//  FlatButton.swift
//  BMXFlatButton
//
//  Created by Massimiliano Bigatti on 05/07/14.
//  Copyright (c) 2014 Massimiliano Bigatti. All rights reserved.
//

import UIKit

@IBDesignable
class FlatButton: UIButton {

    @IBInspectable var normalColor : UIColor = UIColor.lightGrayColor() {
    didSet {
        updateButtonColor()
    }
    }
    
    @IBInspectable var highlightedColor : UIColor? {
    didSet {
        updateButtonColor()
    }
    }
    
    @IBInspectable var cornerRadius : CGFloat = 2 {
    didSet {
        self.layer.cornerRadius = cornerRadius
    }
    }
    
    override var highlighted : Bool {
    didSet {
        updateButtonColor()
    }
    }
    
    func updateButtonColor() {
        if highlighted {
            if highlightedColor {
                self.backgroundColor = highlightedColor!
            } else {
                self.backgroundColor = normalColor.darkerColor(0.2)
            }
        } else {
            self.backgroundColor = normalColor
        }
    }
}
