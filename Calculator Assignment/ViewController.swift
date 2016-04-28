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
    
    var displayValue: String?
    var operation: String?
    
    var operand: Double?

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
    
    // Operation IBActions
    
    @IBAction func multiplicationTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        if doubleValueFromDisplayValue == nil {
            print("Reset the number because we could not convert the current value into a Double")
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "*"
            displayValue = nil
        } else if operand != nil && displayValue != nil{
            if operation == "+" {
                print("")
                operand = operand! + doubleValueFromDisplayValue!
            }
            else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            }
            else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            }
            else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "*"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    
    }
    
    @IBAction func divideTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        if doubleValueFromDisplayValue == nil {
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "/"
            displayValue = nil
        } else if operand != nil && displayValue != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            }
            else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            }
            else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "/"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    }
    
    @IBAction func subtractTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        if doubleValueFromDisplayValue == nil {
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "-"
            displayValue = nil
        } else if operand != nil && displayValue != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            }
            else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            }
            else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "-"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
        
    }
    
    @IBAction func plusTapped(sender: UIButton) {
        var doubleValueFromDisplayValue: Double?
        
        if let currentValue = displayValue, doubleFromCurrentValue = Double(currentValue) {
            doubleValueFromDisplayValue = doubleFromCurrentValue
        }
        if doubleValueFromDisplayValue == nil {
            displayValue = nil
            displayLabel.text = "0"
        } else if operand == nil {
            operand = doubleValueFromDisplayValue
            operation = "+"
            displayValue = nil
        } else if operand != nil && displayValue != nil {
            if operation == "+" {
                operand = operand! + doubleValueFromDisplayValue!
            } else if operation == "-" {
                operand = operand! - doubleValueFromDisplayValue!
            }
            else if operation == "*" {
                operand = operand! * doubleValueFromDisplayValue!
            }
            else if operation == "/" {
                operand = operand! / doubleValueFromDisplayValue!
            }
            operation = "+"
            displayValue = nil
            displayLabel.text = "\(operand!)"
        }
    }
    
    @IBAction func equalsTapped(sender: UIButton) {
        if let currentValue = displayValue {
            if let doubleFromCurrentValue = Double(currentValue) {
                
                if operation == "+" {
                    print("")
                    operand = operand! + doubleFromCurrentValue
                }
                else if operation == "-" {
                    print("Subtraction")
                    operand = operand! - doubleFromCurrentValue
                }
                else if operation == "*" {
                    operand = operand! * doubleFromCurrentValue
                }
                else if operation == "/" {
                    operand = operand! / doubleFromCurrentValue
                }
                
                displayLabel.text = "\(operand!)"
                operation = nil
                
            }
        }
    }
    
    @IBAction func plusMinusTapped(sender: UIButton) {
        
    }
    
    @IBAction func backspaceTapped(sender: UIButton) {
        
    }
    

    
    // Symbol IBActions
    
    @IBAction func decimalTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "."
        } else {
            displayValue = "."
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func zeroTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "0"
        } else {
            displayValue = "0"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func oneTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "1"
        } else {
            displayValue = "1"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func twoTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "2"
        } else {
            displayValue = "2"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func threeTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "3"
        } else {
            displayValue = "3"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func fourTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "4"
        } else {
            displayValue = "4"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func fiveTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "5"
        } else {
            displayValue = "5"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func sixTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "6"
        } else {
            displayValue = "6"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func sevenTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "7"
        } else {
            displayValue = "7"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func eightTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "8"
        } else {
            displayValue = "8"
        }
        displayLabel.text = displayValue!
    }
    
    @IBAction func nineTapped(sender: UIButton) {
        if let currentValue = displayValue {
            displayValue = currentValue + "9"
        } else {
            displayValue = "9"
        }
        displayLabel.text = displayValue!
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}

