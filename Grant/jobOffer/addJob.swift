//
//  addJob.swift
//  Grant
//



import UIKit
import RealmSwift

class addJob: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
     let pickerView = UIPickerView()
    
    @IBOutlet weak var jobOfferTitle: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var jobOfferTV: UITextView!
    @IBOutlet weak var textFiled: UITextField!
    
    
    @IBOutlet weak var placePicker: UIPickerView!
    
    
    let placeList = [
        "北海道","青森県","岩手県","宮城県","秋県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"
    
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: pickerView.bounds.size.height)
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        let vi = UIView(frame: pickerView.bounds)
        vi.backgroundColor = UIColor.white
        vi.addSubview(pickerView)
        
        textFiled.inputView = vi
        
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor.black
        let doneButton   = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(addJob.donePressed))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(addJob.cancelPressed))
        let spaceButton  = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        textFiled.inputAccessoryView = toolBar

    }
    
    
    
    @IBAction func addJobDone(_ sender: Any) {
        
        let newJob = JobOffer()
        
        newJob.title = jobOfferTitle.text!
        newJob.price = priceTF.text!
        newJob.place = textFiled.text!
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
    
//    PickerView
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return placeList.count
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        return placeList[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        textFiled.text = placeList[row]
        
    }
    
    @objc func donePressed() {
        view.endEditing(true)
    }
    
    // Cancel
    @objc func cancelPressed() {
        textFiled.text = ""
        view.endEditing(true)
    }
    
    
    
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
