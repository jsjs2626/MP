//
//  HealthViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/18/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import UIKit

class HealthViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var diabetes: UISwitch!
    @IBOutlet var cancer: UISwitch!
    @IBOutlet var heart: UISwitch!
    @IBOutlet var kidney: UISwitch!
    @IBOutlet var nerve: UISwitch!
    @IBOutlet var vision: UISwitch!
    @IBOutlet var food : UITextField!
    @IBOutlet var medicine : UITextField!
    @IBOutlet var plant : UITextField!
    @IBOutlet var animal : UITextField!
    @IBOutlet var other : UITextField!
    @IBOutlet var blood : UITextField!
    @IBOutlet var cancel : UIButton!
    
    var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        diabetes.transform = CGAffineTransformMakeScale(0.65,0.65)
        cancer.transform = CGAffineTransformMakeScale(0.65,0.65)
        heart.transform = CGAffineTransformMakeScale(0.65,0.65)
        kidney.transform = CGAffineTransformMakeScale(0.65,0.65)
        nerve.transform = CGAffineTransformMakeScale(0.65,0.65)
        vision.transform = CGAffineTransformMakeScale(0.65,0.65)
        
        food.delegate = self;
        medicine.delegate = self;
        animal.delegate = self;
        plant.delegate = self;
        other.delegate = self;
        blood.delegate = self;
        
        if let foodIsNotNill = defaults.objectForKey("food") as? String {
            self.food.text = defaults.objectForKey("food") as! String
        }
        
        if let medicineIsNotNill = defaults.objectForKey("med") as? String {
            self.medicine.text = defaults.objectForKey("med") as! String
        }
        
        if let plantIsNotNill = defaults.objectForKey("plant") as? String {
            self.plant.text = defaults.objectForKey("plant") as! String
        }
        
        if let animalIsNotNill = defaults.objectForKey("animal") as? String {
            self.animal.text = defaults.objectForKey("animal") as! String
        }
        
        if let otherIsNotNill = defaults.objectForKey("other") as? String {
            self.other.text = defaults.objectForKey("other") as! String
        }
        
        if let bloodIsNotNill = defaults.objectForKey("bg") as? String {
            self.blood.text = defaults.objectForKey("bg") as! String
        }
        
        diabetes!.on = defaults.boolForKey("diabetes")
        cancer!.on = defaults.boolForKey("cancer")
        heart!.on = defaults.boolForKey("heart")
        kidney!.on = defaults.boolForKey("kidney")
        nerve!.on = defaults.boolForKey("nerve")
        vision!.on = defaults.boolForKey("vision")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func save(sender: AnyObject) {
        
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.food.text, forKey: "food")
        defaults.setObject(self.medicine.text, forKey: "med")
        defaults.setObject(self.plant.text, forKey: "plant")
        defaults.setObject(self.animal.text, forKey: "animal")
        defaults.setObject(self.other.text, forKey: "other")
        defaults.setObject(self.blood.text, forKey: "bg")
        
        defaults.setBool(diabetes!.on, forKey: "diabetes");
        defaults.setBool(cancer!.on, forKey: "cancer");
        defaults.setBool(heart!.on, forKey: "heart");
        defaults.setBool(kidney!.on, forKey: "kidney");
        defaults.setBool(nerve!.on, forKey: "nerve");
        defaults.setBool(vision!.on, forKey: "vision");
        
    }


}

