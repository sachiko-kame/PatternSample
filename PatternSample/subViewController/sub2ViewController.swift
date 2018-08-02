//
//  sub2ViewController.swift
//  PatternSample
//
//  Created by 水野祥子 on 2018/08/02.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class sub2ViewController: UIViewController {
    
    var tabele:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let navheight = self.navigationController?.navigationBar.frame.size.height ?? 0
        let Topheight = statatusbar + navheight
        

        tabele = UITableView(frame:CGRect(x:0, y:Topheight, width:ViewScreen.width ,height:ViewScreen.height - Topheight))
        
        tabele?.register(cellTypes: [SampleTableViewCell.self, SampleTableViewCell.self])
        tabele?.delegate = self
        tabele?.dataSource = self
        self.view.addSubview(tabele!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension sub2ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(with: SampleTableViewCell.self, for: indexPath)
        return cell
    }
    
    func tableView(_ table: UITableView, didSelectRowAt indexPath:IndexPath) {
        table.deselectRow(at: indexPath, animated: true)
        print("cell Tap!")
            
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tabele?.estimatedRowHeight = SampleTableViewCell.height
        return UITableViewAutomaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "セクション"
    }
    
    
}
