//
//  ViewController.swift
//  bmi
//
//  Created by matan elimelech on 16/08/2018.
//  Copyright © 2018 Moveo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(bmiCalculator(mass : 600, height : 1.90))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bmiCalculator(mass : Double, height : Double) -> String {
        let bmi = mass / (height * height)
        var message : String = ""
        if bmi > 25 {
            message = "overweight"
        }
        else if bmi > 18.5 && bmi < 25 {
            message = "normal"
        }
        
        else {
            message = "underwight"
        }
        print(bmi)
        return message
    }

}

