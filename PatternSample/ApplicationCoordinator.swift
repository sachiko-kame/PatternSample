//
//  ApplicationCoordinator.swift
//  PatternSample
//
//  Created by 水野祥子 on 2018/08/02.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ApplicationCoordinator: NSObject, ViewControllerDelegate {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        let first = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        first.transitionDelegate = self
        
        let nvc = UINavigationController(rootViewController: first)
        window.rootViewController = nvc
        window.makeKeyAndVisible()
    }
    
    func pushProductPage(productId: Int) {
        switch productId {
        case 1:
            let initVc: sub1ViewController = sub1ViewController()
//            initVc.transitionDelegate = self
            (self.window.rootViewController as! UINavigationController).pushViewController(initVc, animated: true)
        case 2:
            let initVc: sub2ViewController = sub2ViewController()
            (self.window.rootViewController as! UINavigationController).pushViewController(initVc, animated: true)
            
        case 3:
            let initVc: sub3ViewController = sub3ViewController()
            (self.window.rootViewController as! UINavigationController).pushViewController(initVc, animated: true)
            
            
        default:break
        }
    }
    
}
