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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

