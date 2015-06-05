//
//  ReadPersonalViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/28/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import Foundation
import UIKit

class ReadPersonalViewController: UIViewController {
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ftLabel: UILabel!
    @IBOutlet weak var inLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var raceLabel: UILabel!
    
    var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.raceLabel.text = defaults.objectForKey("race") as? String
        self.ageLabel.text = defaults.objectForKey("age") as? String
        self.ftLabel.text = defaults.objectForKey("foot") as? String
        self.inLabel.text = defaults.objectForKey("inch") as? String
        self.weightLabel.text = defaults.objectForKey("weight") as? String
        self.genderLabel.text = defaults.objectForKey("gender") as? String
        
        self.reloadInputViews()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToPVC (segue : UIStoryboardSegue) {}
    
}
