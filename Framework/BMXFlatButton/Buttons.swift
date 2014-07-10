//
//  AbstractButton.swift
//  BMXFlatButton
//
//  Created by Massimiliano Bigatti on 06/07/14.
//  Copyright (c) 2014 Massimiliano Bigatti. All rights reserved.
//

import UIKit

@IBDesignable
class AbstractButton: UIButton {
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @IBInspectable var normalColor : UIColor = UIColor.clearColor() {
    didSet {
        updateButtonColor()
    }
    }
    
    @IBInspectable var highlightedColor : UIColor? {
    didSet {
        updateButtonColor()
    }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
    didSet {
        layer.borderWidth = borderWidth
    }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
    didSet {
        layer.borderColor = borderColor.CGColor
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

@IBDesignable
class FlatButton: AbstractButton {
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @IBInspectable var cornerRadius : CGFloat = 2 {
    didSet {
        self.layer.cornerRadius = cornerRadius
    }
    }
    
}

@IBDesignable
class CircularButton: AbstractButton {
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override var frame: CGRect {
    didSet {
        let wide = max(frame.size.width, frame.size.height)
        layer.cornerRadius = wide / 2
    }
    }
    
}
