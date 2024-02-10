//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Yerkebulan on 10.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct calculatorBrain {
    
    var BMI: BMI?
    
    
    mutating func calculateBMI(weigh: Float, heigh: Float) -> () {
        let BMIValue = (weigh / (heigh * heigh))
        let advice = if BMIValue < 18.5 {
            "BAD! underweigh"
        } else if BMIValue < 24.9 {
            "GOOD! NORMAL"
        } else {
            "very bad overweigh"
        }
        
        let color = if BMIValue < 18.5 {
            UIColor.red
        } else if BMIValue < 24.9 {
            UIColor.green
        } else {
            UIColor.yellow
        }
        BMI = BMI_Calculator.BMI(BMIValue: BMIValue, advice: advice, color: color)
    }
    
    
    
    
    
}
