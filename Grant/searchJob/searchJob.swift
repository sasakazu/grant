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
,UITableViewDelegate, UITableViewDataSource
{
    
    let searchCategory = [
        "身の回り","細かな作業","お掃除","わんちゃんのこと","体力仕事","外作"
    ]
    
    
    let searchPlace = [
        
        "北海道","青森県","岩手県","宮城県","秋県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"
        
    ]
    
    
    var jobOfferItem: Results<JobOffer>!
    
    
    
    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let realm = try Realm()
            
            jobOfferItem = realm.objects(JobOffer.self)
            
            
        }catch{
            
            
        }
        
        
        tableView1.dataSource = self
        tableView1.delegate = self
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        tableView1.reloadData()
    }
    
    
    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        
        
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jobOfferItem.count
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        let object = jobOfferItem[indexPath.row]
        
        cell.textLabel?.text = object.title
        
        return cell
    }
    
    
    
    
}
