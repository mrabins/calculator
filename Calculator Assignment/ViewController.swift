//
//  ViewController.swift
//  Calculator Assignment
//
//  Created by Mark Rabins on 4/25/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayLabel.textAlignment = NSTextAlignment.Right
        displayLabel.text = "0"
        displayLabel.backgroundColor = UIColor(red: 153/255, green: 255/255, blue: 153/255, alpha: 1.0)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

