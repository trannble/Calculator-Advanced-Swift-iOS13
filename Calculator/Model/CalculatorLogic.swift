//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Tran Le on 4/19/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calcButton(operation: String) -> Double?{
        
        if operation == "+/-" {
            return number * -1.0
        } else if operation == "%" {
            return number * 0.01
        } else if operation == "AC" {
            return 0
        }
        
        return nil
    }
    
}
