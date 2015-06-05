//
//  PersonalViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/18/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet var age : UITextField!
    @IBOutlet var heightFt : UITextField!
    @IBOutlet var heightIn : UITextField!
    @IBOutlet var weight : UITextField!
    @IBOutlet var cancel : UIButton!
    @IBOutlet weak var races: UIPickerView!
    @IBOutlet weak var genders: UISegmentedControl!
    
    var racerace: String = "White"
    var gendergender : String = "Male"
    
    
    let pickerData = ["White", "African American", "Hispanic/Latino", "American Indian",
        "Alaska Native", "Asian", "Native Hawaiian", "Pacific Islander"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        races.dataSource = self
        races.delegate = self
        age.delegate = self;
        heightFt.delegate = self;
        heightIn.delegate = self;
        weight.delegate = self;
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if let ageIsNotNill = defaults.objectForKey("age") as? String {
            self.age.text = defaults.objectForKey("age") as! String
        }
        
        if let footIsNotNill = defaults.objectForKey("foot") as? String {
            self.heightFt.text = defaults.objectForKey("foot") as! String
        }
        
        if let inchIsNotNill = defaults.objectForKey("inch") as? String {
            self.heightIn.text = defaults.objectForKey("inch") as! String
        }
        
        if let weightIsNotNill = defaults.objectForKey("weight") as? String {
            self.weight.text = defaults.objectForKey("weight") as! String
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }

    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        racerace = pickerData[row]
    }
    
    @IBAction func sgaction(sender: AnyObject)
    {
        if(genders.selectedSegmentIndex == 0)
        {
            gendergender = "Male";
        }
        else if(genders.selectedSegmentIndex == 1)
        {
            gendergender = "Female";
        }
    }
    
    @IBAction func save(sender: AnyObject) {
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.age.text, forKey: "age")
        defaults.setObject(self.heightFt.text, forKey: "foot")
        defaults.setObject(self.heightIn.text, forKey: "inch")
        defaults.setObject(self.weight.text, forKey: "weight")
        defaults.setObject(racerace, forKey: "race")
        defaults.setObject(gendergender, forKey: "gender")
    }

}


