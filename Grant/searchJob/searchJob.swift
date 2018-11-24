//
//  searchJob.swift
//  Grant
//
//  Created by 笹倉 一也 on 2018/10/24.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class searchJob: UIViewController
//,UITableViewDelegate, UITableViewDataSource
{
 
    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var tableView2: UITableView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var tableView3: UITableView!
    @IBOutlet var segmentView0: UIView!
    @IBOutlet var segmentView1: UIView!
    @IBOutlet var segmentView2: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        addZeroView()
        self.view.addSubview(segmentView0)
        
    }
    
    func addZeroView() {
        segmentView1.removeFromSuperview()
        self.view.addSubview(segmentView0)
        
    }
    
    
    func addFirstView() {
        segmentView2.removeFromSuperview()
        self.view.addSubview(segmentView1)
        
    }
    
    func addSecondView() {
        segmentView0.removeFromSuperview()
        self.view.addSubview(segmentView2)
        
    }
    
    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        
        case 0:
            addZeroView()
        case 1:
            addFirstView()
        case 2:
            addSecondView()
        default:
            addZeroView()
        
        }
        
    }


    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    
    
    
    
}
