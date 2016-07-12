//
//  MainViewController.swift
//  NSUserDefault
//
//  Created by Quentin Lathière on 7/7/16.
//  Copyright © 2016 Quentin Lathière. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    

    @IBOutlet weak var firstNameEntry: UITextField!
    @IBOutlet weak var lastNameEntry: UITextField!
    @IBOutlet weak var countryEntry: UITextField!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set defaults
        //let defaults = self.defaults
        
        // load saved data
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveAndDisplayButton(sender: AnyObject) {
        
        // save data to NSUserDefaults
        
        defaults.setObject(firstNameEntry.text, forKey: "savedfirstname")
        defaults.setObject(lastNameEntry.text, forKey: "savedlastname")
        defaults.setObject(countryEntry.text, forKey: "savedcountry")
        defaults.synchronize()
        
        // display saved data
        
        if let fname = defaults.stringForKey("savedfirstname"){
            firstNameLabel.text = "First name: \(fname)"
        }
        
        if let lname = defaults.stringForKey("savedlastname"){
            lastNameLabel.text = "Last name: \(lname)"
        }
        
        if let country = defaults.stringForKey("savedcountry"){
            countryLabel.text = "Country: \(country)"
        }
    }
    

}
