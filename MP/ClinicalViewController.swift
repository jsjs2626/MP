//
//  ClinicalViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/18/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import UIKit


class ClinicalViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var pcp : UITextField!
    @IBOutlet var ip : UITextField!
    @IBOutlet var hospitalVisits : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pcp.delegate = self;
        ip.delegate = self;
        hospitalVisits.delegate = self;
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        if let pcpIsNotNill = defaults.objectForKey("pcp") as? String {
            self.pcp.text = defaults.objectForKey("pcp") as! String
        }
        
        if let ipIsNotNill = defaults.objectForKey("ip") as? String {
            self.ip.text = defaults.objectForKey("ip") as! String
        }
        
        if let hospitalIsNotNill = defaults.objectForKey("hospital") as? String {
            self.hospitalVisits.text = defaults.objectForKey("hospital") as! String
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
        //Causes the view (or one of its embedded text fields to resign the first responder status.
        view.endEditing(true)
    }
    
   
    @IBAction func save(sender: AnyObject) {
        var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(self.pcp.text, forKey: "pcp")
        defaults.setObject(self.ip.text, forKey: "ip")
        defaults.setObject(self.hospitalVisits.text, forKey: "hospital")
    }
    
        
    }
    
    


