//
//  UIColor+RGB.swift
//
//  Created by Massimiliano Bigatti on 12/06/14.
//  Copyright (c) 2014 Massimiliano Bigatti. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func colorWithRGB(rgbValue : UInt, alpha : CGFloat) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255
        let green = CGFloat((rgbValue & 0xFF00) >> 8) / 255
        let blue = CGFloat(rgbValue & 0xFF) / 255
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func colorWithRGB(rgbValue : UInt) -> UIColor {
        return colorWithRGB(rgbValue, alpha: CGFloat(1.0))
    }

    func lighterColor(percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 + percent));
    }
    
    func darkerColor(percent : Double) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 - percent));
    }
    
    func colorWithBrightnessFactor(factor: CGFloat) -> UIColor {
        var hue : CGFloat = 0
        var saturation : CGFloat = 0
        var brightness : CGFloat = 0
        var alpha : CGFloat = 0
        
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * factor, alpha: alpha)
        } else {
            return self;
        }
    }
}
