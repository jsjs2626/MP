//
//  PersonalViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/18/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var age : UITextField!
    @IBOutlet var heightFt : UITextField!
    @IBOutlet var heightIn : UITextField!
    @IBOutlet var weight : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        age.delegate = self;
        heightFt.delegate = self;
        heightIn.delegate = self;
        weight.delegate = self;
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}

