//
//  ViewController.swift
//  Calculator Assignment 1
//  Author: Blake Murdock (200260568)
//
//  Created by student on 2016-02-02.
//  Copyright © 2016 Blake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Display Variable
    @IBOutlet weak var displayLabel: UILabel!
    
    // Button Variables
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var additionButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    
    var displayString: String = ""
    var currentNumber: String = ""
    var lastButtonPushed: String = ""
    var lastOperator: String = ""
    var prevNum: Double = 0
    var newNum: Double = 0
    var total: Double = 0
    var buttonsClicked: Int = 0
    
    func checkCalc () {
        if lastOperator == "" {
            prevNum = Double (currentNumber)!
            currentNumber = ""
        }
        else if lastOperator != "" {
            if lastOperator == "+" {
                total = prevNum + Double (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "-" {
                total = prevNum - Double (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "*" {
                total = prevNum * Double (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "/" {
                total = prevNum / Double (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "^" {
                total = pow(prevNum, Double (currentNumber)!)
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            }
        }
    }
    
    @IBAction func plusButtonPressed (sender: AnyObject) {
        if lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            displayLabel.text = displayLabel.text
        }
        else {
            checkCalc()
            lastOperator = "+"
            displayString += "+"
            displayLabel.text = displayString
            lastButtonPushed = "+"
            buttonsClicked++
        }
        
    }
    
    @IBAction func minusButtonPressed (sender: AnyObject) {
        if lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            displayLabel.text = displayLabel.text
        } else {
            checkCalc()
            lastOperator = "-"
            displayString += "-"
            displayLabel.text = displayString
            lastButtonPushed = "-"
            buttonsClicked++
        }
    }
    
    @IBAction func multiplyButtonPressed(sender: AnyObject) {
        if lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            displayLabel.text = displayLabel.text
        } else {
            checkCalc()
            lastOperator = "*"
            displayString += "*"
            displayLabel.text = displayString
            lastButtonPushed = "*"
            buttonsClicked++
        }
    }
    
    @IBAction func divisionButtonPressed(sender: AnyObject) {
        if lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            displayLabel.text = displayLabel.text
        } else {
            checkCalc()
            lastOperator = "/"
            displayString += "/"
            displayLabel.text = displayString
            lastButtonPushed = "/"
            buttonsClicked++
        }
    }
    
    @IBAction func equalButtonPressed(sender: AnyObject) {
        if currentNumber == "" || lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            print(2+(-2))
            displayLabel.text = displayLabel.text
        } else if lastOperator == "" {
            total = Double (displayString)!
            displayLabel.text = displayString
        } else {
            checkCalc()
            lastOperator = ""
            displayString = String(total)
            displayLabel.text = displayString
        }
        
    }
    
    
    @IBAction func ACButtonPressed(sender: AnyObject) {
        lastOperator = ""
        currentNumber = ""
        prevNum = 0
        total = 0
        displayString = ""
        displayLabel.text = "0"
    }
    
    @IBAction func powerOfButtonPressed(sender: AnyObject) {
        if lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            
        } else {
            checkCalc()
            lastOperator = "^"
            displayString += "^"
            displayLabel.text = displayString
            lastButtonPushed = "^"
            buttonsClicked++
        }
    }
    
    @IBAction func decimalButtonPressed(sender: AnyObject) {
        if currentNumber == "" {
            currentNumber += "0."
            displayString += "0."
        } else {
            currentNumber += "."
            displayString += "."
        }
        displayLabel.text = displayString
        lastButtonPushed = "."
        buttonsClicked++
    }
    
    @IBAction func zeroButtonPressed (sender: AnyObject) {
        currentNumber += "0"
        displayString += "0"
        displayLabel.text = displayString
        lastButtonPushed = "0"
        buttonsClicked++
    }
    
    @IBAction func oneButtonPressed (sender: AnyObject) {
        currentNumber += "1"
        displayString += "1"
        displayLabel.text = displayString
        lastButtonPushed = "1"
        buttonsClicked++
    }
    
    
    @IBAction func twoButtonPressed(sender: AnyObject) {
        currentNumber += "2"
        displayString += "2"
        displayLabel.text = displayString
        lastButtonPushed = "2"
        buttonsClicked++
    }
    
    @IBAction func threeButtonPressed(sender: AnyObject) {
        currentNumber += "3"
        displayString += "3"
        displayLabel.text = displayString
        lastButtonPushed = "3"
        buttonsClicked++
    }
    
    @IBAction func fourButtonPressed(sender: AnyObject) {
        currentNumber += "4"
        displayString += "4"
        displayLabel.text = displayString
        lastButtonPushed = "4"
        buttonsClicked++
    }
    
    @IBAction func fiveButtonPressed(sender: AnyObject) {
        currentNumber += "5"
        displayString += "5"
        displayLabel.text = displayString
        lastButtonPushed = "5"
        buttonsClicked++
    }
    
    @IBAction func sixButtonPressed(sender: AnyObject) {
        currentNumber += "6"
        displayString += "6"
        displayLabel.text = displayString
        lastButtonPushed = "6"
        buttonsClicked++
    }
    
    @IBAction func sevenButtonPressed(sender: AnyObject) {
        currentNumber += "7"
        displayString += "7"
        displayLabel.text = displayString
        lastButtonPushed = "7"
        buttonsClicked++
    }
    
    @IBAction func eightButtonPressed(sender: AnyObject) {
        currentNumber += "8"
        displayString += "8"
        displayLabel.text = displayString
        lastButtonPushed = "8"
        buttonsClicked++
    }
    
    @IBAction func nineButtonPressed(sender: AnyObject) {
        currentNumber += "9"
        displayString += "9"
        displayLabel.text = displayString
        lastButtonPushed = "9"
        buttonsClicked++
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

