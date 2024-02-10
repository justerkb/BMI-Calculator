//
//  resultViewController.swift
//  BMI Calculator
//
//  Created by Yerkebulan on 03.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    
    var calculatorBrain: calculatorBrain?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var recomendationLabel: UILabel!
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        
        bmiLabel.text = "\(round(((calculatorBrain?.BMI?.BMIValue ?? 0.0) * 10) / 10.0))"
        recomendationLabel.text = calculatorBrain?.BMI?.advice ?? "error"
        view.backgroundColor = calculatorBrain?.BMI?.color
        
    
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
