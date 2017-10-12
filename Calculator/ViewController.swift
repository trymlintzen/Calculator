//
//  ViewController.swift
//  Calculator
//
//  Created by Trym Lintzen on 12-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldNumbers: UITextField!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var devide: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var equals: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var comma: UIButton!
    
    var calculator: CalculatorBrain!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator = CalculatorBrain()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateActions(_ buttonInput: UIButton) {
        if let buttonValue = buttonInput.titleLabel?.text, let buttonDouble = Double(buttonValue) {
            calculator.storeNumbers(buttonValue)
             textFieldNumbers.text = (calculator.numbersHistory)
            

        } else {
            switch buttonInput {
            case plus:
                let result = calculator.plus(number1: Double(calculator.numbersHistory)!)
                textFieldNumbers.text = String(result)
            default:
                break
            }
        }

//        return resultCalculation
    }
    
 




}

