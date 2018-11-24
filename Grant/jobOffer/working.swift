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
    
    var jobOfferTitle:String = ""
    var jobOfferPrice:String = ""
    var jobOfferPlace:String = ""
    var jobOfferContent:String = ""
    
    
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
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let object = jobOfferItem[indexPath.row]
        
        jobOfferTitle = object.title
        jobOfferPrice = object.price
        jobOfferPlace = object.place
        jobOfferContent = object.content
        
        performSegue(withIdentifier: "jobOfferDetail",sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "jobOfferDetail") {
            
            
            let secondVC: jobOfferDetail = (segue.destination as? jobOfferDetail)!
            
            
            secondVC.jobDetailTitle = jobOfferTitle
            secondVC.jobDetailPrice = jobOfferPrice
            secondVC.jobDetailinPlace = jobOfferPlace
            secondVC.jobDetailContent = jobOfferContent
        
        
            }
    

    }



}
