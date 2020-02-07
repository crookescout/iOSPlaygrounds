//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Scout on 2/7/20.
//  Copyright © 2020 Scout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var Fahrenheit_degrees: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any) {
        let fahrenheit =
            Double(Fahrenheit_degrees.text!)
        let celsius = (5 / 9.0) * (fahrenheit! - 32)
        celsiusLabel.text = String(celsius)
    }
    
}

