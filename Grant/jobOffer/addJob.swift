//
//  addJob.swift
//  Grant
//
//  Created by 笹倉 一也 on 2018/10/24.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class addJob: UIViewController {
    
    @IBOutlet weak var jobOfferTitle: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var jobOfferTV: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addJobDone(_ sender: Any) {
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
}
