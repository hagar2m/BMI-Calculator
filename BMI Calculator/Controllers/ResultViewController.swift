//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Hagar on 06/06/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
//    var bmiValue: String?
    var calculatorBrain: CalculatorBrain?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = calculatorBrain?.getBMIValue()
        adviceLabel.text = calculatorBrain?.getAdvice()
        view.backgroundColor = calculatorBrain?.getColor()
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

    

    

}
