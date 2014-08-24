//
//  AbstractButton.swift
//  BMXFlatButton
//
//  Created by Massimiliano Bigatti on 06/07/14.
//  Copyright (c) 2014 Massimiliano Bigatti. All rights reserved.
//

import UIKit

@IBDesignable public class AbstractButton: UIButton {
    
    @IBInspectable public var normalColor : UIColor = UIColor.clearColor() {
    didSet {
        updateButtonColor()
    }
    }
    
    @IBInspectable public var highlightedColor : UIColor? {
    didSet {
        updateButtonColor()
    }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
    didSet {
        layer.borderWidth = borderWidth
    }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.clearColor() {
    didSet {
        layer.borderColor = borderColor.CGColor
    }
    }
    
    public override var highlighted : Bool {
    didSet {
        updateButtonColor()
    }
    }
    
    func updateButtonColor() {
        if highlighted {
            if (highlightedColor != nil) {
                self.backgroundColor = highlightedColor!
            } else {
                self.backgroundColor = normalColor.darkerColor(0.2)
            }
        } else {
            self.backgroundColor = normalColor
        }
    }
}

@IBDesignable public class FlatButton: AbstractButton {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable public var cornerRadius : CGFloat = 2 {
    didSet {
        self.layer.cornerRadius = cornerRadius
    }
    }
    
}

@IBDesignable public class CircularButton: AbstractButton {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        let wide = max(frame.size.width, frame.size.height)
        layer.cornerRadius = wide / 2        
    }
}
