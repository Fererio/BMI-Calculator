//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Balaji Srinivas on 14/02/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    mutating func calculateBMI(height: Float, weight:Float) {
        
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more food...", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit...", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less food....", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Nil"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.gray
    }
    
}
