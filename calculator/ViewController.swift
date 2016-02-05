//
//  ViewController.swift
//  Calculator Assignment 1
//  File Name: ViewController.swift
//  Author: Blake Murdock (200260568)
//  Date: Friday, February 05, 2016
//  Decription: A basic calculator app for iOS
//
//  Created by student on 2016-02-02.
//  Copyright © 2016 Blake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Display Variable
    @IBOutlet weak var displayLabel: UILabel!
    
    var displayString: String = ""
    var currentNumber: String = ""
    var lastButtonPushed: String = ""
    var lastOperator: String = ""
    var prevNum: Float = 0
    var newNum: Float = 0
    var total: Float = 0
    var buttonsClicked: Int = 0
    
    /**
     Function to check if a calculation needs to be made. Covers addition, subtraction, multiplication, division, and exponents
    */
    func checkCalc () {
        if lastOperator == "" {
            print(total)
            prevNum = float_t (currentNumber)!
            currentNumber = ""
        }
        else if lastOperator != "" {
            if lastOperator == "+" {
                total = prevNum + Float (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "-" {
                total = prevNum - Float (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "*" {
                total = prevNum * Float (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "/" {
                total = prevNum / Float (currentNumber)!
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            } else if lastOperator == "^" {
                total = pow(prevNum, Float (currentNumber)!)
                displayString = String (total)
                prevNum = total
                currentNumber = ""
            }
        }
    }
    
    /**
     Function that is trigger when the addition button is pressed
     */
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
    
    /**
     Function that is trigger when the subtraction button is pressed
     */
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
    
    /**
     Function that is trigger when the multiplication button is pressed
     */
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
    
    /**
     Function that is trigger when the division button is pressed
     */
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
    
    /**
     Function that is trigger when the equal button is pressed
     */
    @IBAction func equalButtonPressed(sender: AnyObject) {
        if currentNumber == "" || lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || lastButtonPushed == "^" || buttonsClicked == 0 {
            displayLabel.text = displayLabel.text
        } else if lastOperator == "" {
            total = Float (displayString)!
            displayLabel.text = displayString
        } else {
            checkCalc()
            lastOperator = ""
            displayString = String(total)
            displayLabel.text = displayString
        }
        
    }
    
    /**
     Function that is trigger when the AC button is pressed
     */
    @IBAction func ACButtonPressed(sender: AnyObject) {
        lastOperator = ""
        currentNumber = ""
        prevNum = 0
        total = 0
        displayString = ""
        displayLabel.text = "0"
    }
    
    /**
     Function that is trigger when the exponent button is pressed
     */
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
    
    /**
     Function that is trigger when the decimal button is pressed
     */
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
    
    /**
     Function that is trigger when the zero button is pressed
     */
    @IBAction func zeroButtonPressed (sender: AnyObject) {
        currentNumber += "0"
        displayString += "0"
        displayLabel.text = displayString
        lastButtonPushed = "0"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the one button is pressed
     */
    @IBAction func oneButtonPressed (sender: AnyObject) {
        currentNumber += "1"
        displayString += "1"
        displayLabel.text = displayString
        lastButtonPushed = "1"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the two button is pressed
     */
    @IBAction func twoButtonPressed(sender: AnyObject) {
        currentNumber += "2"
        displayString += "2"
        displayLabel.text = displayString
        lastButtonPushed = "2"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the three button is pressed
     */
    @IBAction func threeButtonPressed(sender: AnyObject) {
        currentNumber += "3"
        displayString += "3"
        displayLabel.text = displayString
        lastButtonPushed = "3"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the four button is pressed
     */
    @IBAction func fourButtonPressed(sender: AnyObject) {
        currentNumber += "4"
        displayString += "4"
        displayLabel.text = displayString
        lastButtonPushed = "4"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the five button is pressed
     */
    @IBAction func fiveButtonPressed(sender: AnyObject) {
        currentNumber += "5"
        displayString += "5"
        displayLabel.text = displayString
        lastButtonPushed = "5"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the six button is pressed
     */
    @IBAction func sixButtonPressed(sender: AnyObject) {
        currentNumber += "6"
        displayString += "6"
        displayLabel.text = displayString
        lastButtonPushed = "6"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the seven button is pressed
     */
    @IBAction func sevenButtonPressed(sender: AnyObject) {
        currentNumber += "7"
        displayString += "7"
        displayLabel.text = displayString
        lastButtonPushed = "7"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the eight button is pressed
     */
    @IBAction func eightButtonPressed(sender: AnyObject) {
        currentNumber += "8"
        displayString += "8"
        displayLabel.text = displayString
        lastButtonPushed = "8"
        buttonsClicked++
    }
    
    /**
     Function that is trigger when the nine button is pressed
     */
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

