//
//  jobOfferDetail.swift
//  Grant
//
//  Created by 笹倉一也 on 2018/11/24.
//  Copyright © 2018 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class jobOfferDetail: UIViewController {

    var jobDetailTitle:String = ""
    var jobDetailPrice:String = ""
    var jobDetailinPlace:String = ""
    var jobDetailContent:String = ""
    var jobDetailCategory:String = ""
    
    
    @IBOutlet weak var jobDetailLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var jobDetailPriceLabel: UILabel!
    @IBOutlet weak var jobDetailPlace: UILabel!
    @IBOutlet weak var jobDetailTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        jobDetailLabel.text = jobDetailTitle
        jobDetailPriceLabel.text = jobDetailPrice
        jobDetailPlace.text = jobDetailinPlace
        jobDetailTextView.text = jobDetailContent
        categoryLabel.text = jobDetailCategory
        
    }
    


}
