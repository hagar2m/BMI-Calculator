//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hagar on 07/06/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var height: Float = 0.0;
    var heightFormated = "";
    var weight : Float = 0.0;
    var weightFormated = "";
    
    var bmi: BMI?
    
    mutating func calculateBmi() {
        // BMI = weight (kg) / (height (m) ^ 2)
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return formateFloatValue(
            bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func setHeight(heightValue: Float) {
        height = heightValue
        heightFormated = formateFloatValue(heightValue)
    }
    
    mutating func setweight(weightValue: Float) {
        weight = weightValue
        weightFormated = formateFloatValue(weightValue)
    }
    
    func formateFloatValue(_ value: Float) -> String {
        return String(format: "%.2f", value)
    }
    
}
