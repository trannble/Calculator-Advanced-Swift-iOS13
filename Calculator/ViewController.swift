//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert String to Double")
            
            //number is an optional b/c not all text can be converted to double
            //second ! says that number will always have value (bc it will be 0 or pressed in), use guard for safety
        }
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            }
        }
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
    
}

