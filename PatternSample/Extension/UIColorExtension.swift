//
//  UIColorExtension.swift
//  PatternSample
//
//  Created by 水野祥子 on 2018/08/02.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func rgbColor(rgbValue: UInt) -> UIColor{
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    class var sample: UIColor {
        return UIColor.rgbColor(rgbValue: 0x00ACED)
    }
    
    class var randomColor:UIColor {
        let r = arc4random_uniform(255)
        let g = arc4random_uniform(255)
        let b = arc4random_uniform(255)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 0.7)
    }
    
}
