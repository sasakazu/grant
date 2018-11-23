//
//  addJob.swift
//  Grant
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
        
        let newJob = JobOffer()
        
        newJob.title = jobOfferTitle.text!
        newJob.price = priceTF.text!
        newJob.place = placeLabel.text!
        newJob.content = jobOfferTV.text!
    
        do{
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(newJob)
                print("成功！！")
                
            })
        }catch{
            print("失敗！！！")
        }
        
        self.navigationController?.popViewController(animated: true)
        
        
        
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
