//
//  ReadClinicalViewController.swift
//  MP
//
//  Created by Mark Hofmeister on 5/28/15.
//  Copyright (c) 2015 Julia Hofmeister. All rights reserved.
//

import Foundation
import UIKit

class ReadClinicalViewController: UIViewController {
    
    @IBOutlet weak var pcpLabel: UILabel!
    @IBOutlet weak var hospitalLabel: UILabel!
    @IBOutlet weak var ipLabel: UILabel!
    
    var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pcpLabel.text = defaults.objectForKey("pcp") as? String
        self.ipLabel.text = defaults.objectForKey("ip") as? String
        self.hospitalLabel.text = defaults.objectForKey("hospital") as? String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     @IBAction func unwindToCVC (segue : UIStoryboardSegue) {}
}
