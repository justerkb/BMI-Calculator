//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculateBrain = calculatorBrain()
    
    @IBOutlet weak var weightSldier: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    
    @IBAction func heighAction(_ sender: UISlider) {
        heightValueLabel.text = "\(round(sender.value * 10) / 10.0)m"
        
    }
    
    @IBAction func weightAction(_ sender: UISlider) {
        weightValueLabel.text = "\(Int(round(sender.value)))Kg"

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        
        var weigh = weightSldier.value
        var heigh = heightSlider.value
        
       
        
        calculateBrain.calculateBMI(weigh: weigh, heigh: heigh)
        
        var resultViewController = resultViewController()
        
         
//        self.present(resultViewController, animated: true, completion: nil)
        
        
        self.performSegue(withIdentifier: "goo", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goo" {
            let resultVC = segue.destination as! resultViewController
            resultVC.calculatorBrain = calculateBrain
            print("2")
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}

