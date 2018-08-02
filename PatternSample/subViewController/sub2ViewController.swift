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
    var sampledata:Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let navheight = self.navigationController?.navigationBar.frame.size.height ?? 0
        let Topheight = statatusbar + navheight
        
        DispatchQueue.main.async {
            let path = Bundle.main.path(forResource: "sample", ofType: "json")!
            let jsonData = NSData(contentsOfFile: path)!
            do {
                let json = try JSONSerialization.jsonObject(with: jsonData as Data, options: .mutableContainers) as! NSDictionary
                
                var dic: Dictionary<String, Any> = json as! Dictionary
                let a:Array<String> = dic["sampledata"] as! Array<String>
                self.sampledata = a
            } catch let err as NSError {
                print(err.localizedDescription)
                
            }
            self.tabele = UITableView(frame:CGRect(x:0, y:Topheight, width:ViewScreen.width ,height:ViewScreen.height - Topheight))
            
            self.tabele?.register(cellTypes: [SampleTableViewCell.self, SampleTableViewCell.self])
            self.tabele?.delegate = self
            self.tabele?.dataSource = self
            self.view.addSubview(self.tabele!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension sub2ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sampledata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(with: SampleTableViewCell.self, for: indexPath)
        cell.SetCell(text:self.sampledata[indexPath.row])
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
