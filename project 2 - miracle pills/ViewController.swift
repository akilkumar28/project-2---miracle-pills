//
//  ViewController.swift
//  project 2 - miracle pills
//
//  Created by AKIL KUMAR THOTA on 12/18/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var lineview: UIView!
    @IBOutlet weak var finalimg: UIImageView!
    @IBOutlet weak var countrylbl: UILabel!
    @IBOutlet weak var statetxt: UITextField!
    @IBOutlet weak var statelbl: UILabel!
    @IBOutlet weak var citytxt: UITextField!
    @IBOutlet weak var citylbl: UILabel!
    @IBOutlet weak var stradrtxt: UITextField!
    @IBOutlet weak var strtadrlab: UILabel!
    @IBOutlet weak var fulnametxt: UITextField!
    @IBOutlet weak var fulnamelbl: UILabel!
    @IBOutlet weak var pricetxt: UILabel!
    @IBOutlet weak var pillimg: UIImageView!
    @IBOutlet weak var pilltxt: UILabel!
    @IBOutlet weak var buynowbtn: UIButton!
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var zipcodelbl: UILabel!
    @IBOutlet weak var countrybtn: UIButton!
    @IBOutlet weak var zipcodetxtfld: UITextField!
    
    let country = ["India","United States","Russia","China","Japan","UK","Australia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerview.delegate = self
        pickerview.dataSource = self
        
        
       
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
     }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerview.isHidden = true
        countrybtn.isHidden = false
        zipcodelbl.isHidden = false
        zipcodetxtfld.isHidden = false
        buynowbtn.isHidden = false
        countrybtn.setTitle(country[row], for: .normal)
        
        
    }
    
    

    @IBAction func clickherepressed(_ sender: UIButton) {
        countrybtn.isHidden = true
        zipcodelbl.isHidden = true
        zipcodetxtfld.isHidden = true
        buynowbtn.isHidden = true
        pickerview.isHidden = false
    }

    @IBAction func buynowpresd(_ sender: Any) {
        finalimg.isHidden = false
        pillimg.isHidden = true
        pilltxt.isHidden = true
        pricetxt.isHidden = true
        lineview.isHidden = true
        fulnamelbl.isHidden = true
        fulnametxt.isHidden = true
        strtadrlab.isHidden = true
        stradrtxt.isHidden = true
        citylbl.isHidden = true
        citytxt.isHidden = true
        statelbl.isHidden = true
        statetxt.isHidden = true
        countrybtn.isHidden = true
        countrylbl.isHidden = true
        pickerview.isHidden = true
        countrybtn.isHidden = true
        zipcodelbl.isHidden = true
        zipcodetxtfld.isHidden = true
        buynowbtn.isHidden = true
        

        
        
    }
    
    
}
