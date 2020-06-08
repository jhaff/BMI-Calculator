//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Jacob Haff on 6/4/20.
//  Copyright © 2020 Jacob Haff. All rights reserved.
//

import UIKit

class  CalculateViewController: UIViewController {
    var calculatorBrain: CalculatorBrain?
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSldierChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        bmiValue = String(format: "%.1f",bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
        
    }
    
}

