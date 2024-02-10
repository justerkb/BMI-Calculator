//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by Yerkebulan on 03.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
class secondViewController: UIViewController {
    
    var BMI: Float = 0.0
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let label = UILabel()
        label.text = "YOUR BMI \(BMI)"
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        
        view.addSubview(label)
        
    }
    
}
