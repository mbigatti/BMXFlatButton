//
//  Buttons.swift
//  BMXFlatButton
//  https://github.com/mbigatti/BMXFlatButton
//
//  Copyright (c) 2014 Massimiliano Bigatti. All rights reserved.
//

import UIKit

/**
    Abstract base class for CircularButton and FlatButton.
 */
@IBDesignable public class AbstractButton: UIButton {
    
    /// button normal background color, default to clear
    @IBInspectable public var normalColor : UIColor = UIColor.clearColor() {
    didSet {
        updateButtonColor()
    }
    }
    
    /// button highlighted background color. If not specified use the normal background color darkened of 0.2%
    @IBInspectable public var highlightedColor : UIColor? {
    didSet {
        updateButtonColor()
    }
    }
    
    /// button border width, defaults to 0
    @IBInspectable public var borderWidth: CGFloat = 0 {
    didSet {
        layer.borderWidth = borderWidth
    }
    }
    
    /// button border color, defaults to clear
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
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**
        Update the button background color based on the highlighted state
     */
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

/**
    Simple flat button, with adjustable corner radius
 */
@IBDesignable public class FlatButton: AbstractButton {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /// button corner radius, defaults to 2px
    @IBInspectable public var cornerRadius : CGFloat = 2 {
    didSet {
        self.layer.cornerRadius = cornerRadius
    }
    }
    
}

/**
    Simple circular button. For correct appearance it is required to have a square size.
 */
@IBDesignable public class CircularButton: AbstractButton {
        
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        let wide = max(frame.size.width, frame.size.height)
        layer.cornerRadius = wide / 2        
    }
}
