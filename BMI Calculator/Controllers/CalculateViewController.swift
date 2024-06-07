//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain();
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderAction(_ sender: UISlider) {
        calculatorBrain.setHeight(heightValue: sender.value)
        heightLabel.text = calculatorBrain.heightFormated;
    }
    
    @IBAction func WeightSliderAction(_ sender: UISlider) {
        calculatorBrain.setweight(weightValue: sender.value)
        weightLabel.text = "\(calculatorBrain.weightFormated)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
      calculatorBrain.calculateBmi()
        self.performSegue(withIdentifier: "goToResult", sender: self)

        
//        let secondViewController = SecondViewController()
//        secondViewController.bmiValue = bmiFormat
//        self.present(secondViewController, animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.calculatorBrain = calculatorBrain
        }
    }
}

