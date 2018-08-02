//
//  ViewController.swift
//  PatternSample
//
//  Created by 水野祥子 on 2018/08/02.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: class {
    func pushProductPage(productId: Int)
}

class ViewController: UIViewController {

    @IBOutlet weak var TextView: UITextView!
    weak var transitionDelegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextView.isUserInteractionEnabled = true
        TextView.isEditable = true
        TextView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func sub1ViewControllerTap(_ sender: UIButton) {
        transitionDelegate?.pushProductPage(productId: 1)
    }
    
    @IBAction func sub2ViewControllerTap(_ sender: UIButton) {
        transitionDelegate?.pushProductPage(productId: 2)
    }
    
    @IBAction func sub3ViewController(_ sender: UIButton) {
        transitionDelegate?.pushProductPage(productId: 3)
    }
    
}

extension ViewController:UITextViewDelegate{
   
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            //あなたのテキストフィールド
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}

