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
        
        let attr: [NSAttributedString.Key : Any] = [
            .font : font, // 文字色
            .paragraphStyle : style, // カラー
            .strokeColor : UIColor.darkGray, // 縁取りの色,
            .kern:1,
         
        ]
        
        self.attributedText = NSAttributedString(string: "\(text)", attributes: attr)
        
    }
}

