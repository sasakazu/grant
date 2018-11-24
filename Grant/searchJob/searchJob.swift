//
//  searchJob.swift
//  Grant
//
//  Created by 笹倉 一也 on 2018/10/24.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit

class searchJob: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet var segmentView1: UIView!
    @IBOutlet var segmentView2: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func addFirstView() {
        segmentView2.removeFromSuperview()
        self.view.addSubview(segmentView1)
        
    }
    
    func addSecondView() {
        segmentView1.removeFromSuperview()
        self.view.addSubview(segmentView2)
        
    }
    
    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        
        case 0:
        addFirstView()
        case 1:
        addSecondView()
        default:
        addFirstView()
        
        }
        
    }
    


}
