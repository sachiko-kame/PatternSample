//
//  SampleTableHeaderView.swift
//  PatternSample
//
//  Created by 水野祥子 on 2018/09/24.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class SampleTableHeaderView: UIView {

    
    override func draw(_ rect: CGRect) {
        self.frame.size.height = SampleTableHeaderView.height
        self.frame.size.width = ViewScreen.size.width
    }
    
    static let height:CGFloat = 50

}
