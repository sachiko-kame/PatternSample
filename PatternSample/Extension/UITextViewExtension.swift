//
//  UITextViewExtension.swift
//  PatternSample
//
//  Created by 水野祥子 on 2018/08/03.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

extension UITextView{
    func attribute1(text:String){
        let font = UIFont(name: "HiraKakuProN-W3", size: 13) ?? UIFont.systemFont(ofSize: 13)
        
        let style = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        style.alignment = NSTextAlignment.left
        style.lineSpacing = 0.5 //行と行に間
        
        let attr = [
            NSForegroundColorAttributeName: UIColor.darkGray,
            NSFontAttributeName: font,
            NSParagraphStyleAttributeName: style,
            NSKernAttributeName: 1  //文字間隔増える横と横の文字間隔
            ] as [String : Any]
        
        self.attributedText = NSAttributedString(string: "\(text)", attributes: attr)
        
    }
}

