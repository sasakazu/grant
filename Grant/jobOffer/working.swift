//
//  working.swift
//  Grant
//
//  Created by 笹倉 一也 on 2018/10/24.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class working: UIViewController {

    @IBOutlet weak var jobOfferTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    print(Realm.Configuration.defaultConfiguration.fileURL!)
    
    
    }
    


}
