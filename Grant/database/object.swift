//
//  object.swift
//  Pods-Grant
//
//  Created by 笹倉一也 on 2018/11/22.
//

import Foundation
import RealmSwift



class JobOffer: Object {
    
    @objc dynamic var title = ""
    @objc dynamic var price = ""
    @objc dynamic var place = ""
    @objc dynamic var content = ""
    
}
