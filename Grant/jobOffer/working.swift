//
//  working.swift
//  Grant
//
//  Created by 笹倉 一也 on 2018/10/24.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class working: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var jobOfferItem: Results<JobOffer>!
    
    @IBOutlet weak var jobOfferTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let realm = try Realm()
            
         jobOfferItem = realm.objects(JobOffer.self)
            
            
        }catch{
            
            
        }
        
        
        jobOfferTable.dataSource = self
        jobOfferTable.delegate = self
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)

    
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        jobOfferTable.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        
        return jobOfferItem.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath)->UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        let object = jobOfferItem[indexpath.row]
        
        cell.textLabel?.text = object.title
        
        return cell
        
        
    }
    
    
    
    


}
