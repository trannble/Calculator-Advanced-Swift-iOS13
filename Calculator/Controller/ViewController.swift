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
    
    //using get and set -> shorter code! -> less room for error
    var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                 fatalError("Cannot convert String to Double")
                 
                 //number is an optional b/c not all text can be converted to double
                 //second ! says that number will always have value (bc it will be 0 or pressed in), use guard for safety
             }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        
        if let calcMethod = sender.currentTitle {
            let calculatorLogic = CalculatorLogic(number: displayValue)
            
            guard let result = calculatorLogic.calcButton(operation: calcMethod) else {
                fatalError("The result of the calculation is nil.")
            }
            displayValue = result
        }
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "." {
                    
                    let isInt: Bool = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
    
}

