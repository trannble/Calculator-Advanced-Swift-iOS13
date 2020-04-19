//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Tran Le on 4/19/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    func calcButton(operation: String?) -> Double{
        
        var multiplierValue: Double = 0.0
        
        if let calcMethod = operation {
            if calcMethod == "+/-" {
                //                 displayValue *= -1
                multiplierValue = -1.0
            } else if calcMethod == "%" {
                //                 displayValue /= 100
                multiplierValue = 0.01
            } else if calcMethod == "AC" {
                //                 displayLabel.text = "0"
                multiplierValue = 0
            }
        }
        return multiplierValue
    }
}
