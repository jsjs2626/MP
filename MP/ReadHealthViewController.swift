//
//  ReadHealthViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/28/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import Foundation
import UIKit

class ReadHealthViewController: UIViewController {

    @IBOutlet weak var diabetesSwitch: UILabel!
    @IBOutlet weak var cancerSwitch: UILabel!
    @IBOutlet weak var visionSwitch: UILabel!
    @IBOutlet weak var nerveSwitch: UILabel!
    @IBOutlet weak var kidneySwitch: UILabel!
    @IBOutlet weak var heartSwitch: UILabel!
    @IBOutlet weak var bloodgroupLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var plantLabel: UILabel!
    @IBOutlet weak var medicineLabel: UILabel!
    
    var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bloodgroupLabel.text = defaults.objectForKey("bg") as? String
        self.otherLabel.text = defaults.objectForKey("other") as? String
        self.animalLabel.text = defaults.objectForKey("animal") as? String
        self.foodLabel.text = defaults.objectForKey("food") as? String
        self.plantLabel.text = defaults.objectForKey("plant") as? String
        self.medicineLabel.text = defaults.objectForKey("med") as? String
        
        let isDiabetes = defaults.boolForKey("diabetes")
        let isCancer = defaults.boolForKey("cancer")
        let isHeart = defaults.boolForKey("heart")
        let isKidney = defaults.boolForKey("kidney")
        let isNerve = defaults.boolForKey("nerve")
        let isVision = defaults.boolForKey("vision")
        
        if isDiabetes == true
        {
            self.diabetesSwitch.text = "Yes"
        }
        else
        {
            self.diabetesSwitch.text = "No"
        }
        
        if isCancer == true
        {
            self.cancerSwitch.text = "Yes"
        }
        else
        {
            self.cancerSwitch.text = "No"
        }
        
        if isHeart == true
        {
            self.heartSwitch.text = "Yes"
        }
        else
        {
            self.heartSwitch.text = "No"
        }
        
        if isKidney == true
        {
            self.kidneySwitch.text = "Yes"
        }
        else
        {
            self.kidneySwitch.text = "No"
        }
        
        if isNerve == true
        {
            self.nerveSwitch.text = "Yes"
        }
        else
        {
            self.nerveSwitch.text = "No"
        }
        
        if isVision == true
        {
            self.visionSwitch.text = "Yes"
        }
        else
        {
            self.visionSwitch.text = "No"
        }
        
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     @IBAction func unwindToHVC (segue : UIStoryboardSegue) {}
    
    
}

