//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Jacob Haff on 6/8/20.
//  Copyright © 2020 Jacob Haff. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
}
