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
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var PercentButton: UIButton!
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
    @IBOutlet weak var bracketsButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    
    var displayString: String = ""
    var lastButtonPushed: String = ""
    var prevNum: Int = 0
    var newNum: Int = 0
    var total: Int = 0
    var buttonsClicked: Int = 0;
    
    @IBAction func plusButtonPressed (sender: AnyObject) {
        if (lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || buttonsClicked == 0) {
            displayLabel.text = displayLabel.text
        }
        else {
            displayString += "+"
            displayLabel.text = displayString
            lastButtonPushed = "+"
            buttonsClicked++
        }
        
    }
    
    @IBAction func minusButtonPressed (sender: AnyObject) {
        if (lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || buttonsClicked == 0) {
            displayLabel.text = displayLabel.text
        } else {
            displayString += "-"
            displayLabel.text = displayString
            lastButtonPushed = "-"
            buttonsClicked++
        }
    }
    
    @IBAction func multiplyButtonPressed(sender: AnyObject) {
        if (lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || buttonsClicked == 0) {
            displayLabel.text = displayLabel.text
        } else {
            displayString += "*"
            displayLabel.text = displayString
            lastButtonPushed = "*"
            buttonsClicked++
        }
    }
    
    @IBAction func divisionButtonPressed(sender: AnyObject) {
        if (lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/" || buttonsClicked == 0) {
            displayLabel.text = displayLabel.text
        } else {
            displayString += "/"
            displayLabel.text = displayString
            lastButtonPushed = "/"
            buttonsClicked++
        }
    }
    
    @IBAction func equalButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func percentButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func plusMinusButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func ACButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func BracketButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func decimalButtonPressed(sender: AnyObject) {
        displayString += "."
        displayLabel.text = displayString
        lastButtonPushed = "."
        buttonsClicked++
    }
    
    @IBAction func zeroButtonPressed (sender: AnyObject) {
        displayString += String(0)
        displayLabel.text = displayString
        lastButtonPushed = "0"
        buttonsClicked++
        //prevNum = Int(displayString)!
        //total = prevNum + newNum
    }
    
    @IBAction func oneButtonPressed (sender: AnyObject) {
        //if lastButtonPushed == "+" || lastButtonPushed == "-" || lastButtonPushed == "*" || lastButtonPushed == "/"  {
        //    prevNum = Int(displayString)!
        //    newNum = 1
        //    total = prevNum + newNum
        //}
        displayString += String(1)
        displayLabel.text = displayString
        lastButtonPushed = "1"
        buttonsClicked++
    }
    
    
    @IBAction func twoButtonPressed(sender: AnyObject) {
        displayString += "2"
        displayLabel.text = displayString
        lastButtonPushed = "2"
        buttonsClicked++
    }
    
    @IBAction func threeButtonPressed(sender: AnyObject) {
        displayString += "3"
        displayLabel.text = displayString
        lastButtonPushed = "3"
        buttonsClicked++
    }
    
    @IBAction func fourButtonPressed(sender: AnyObject) {
        displayString += "4"
        displayLabel.text = displayString
        lastButtonPushed = "4"
        buttonsClicked++
    }
    
    @IBAction func fiveButtonPressed(sender: AnyObject) {
        displayString += "5"
        displayLabel.text = displayString
        lastButtonPushed = "5"
        buttonsClicked++
    }
    
    @IBAction func sixButtonPressed(sender: AnyObject) {
        displayString += "6"
        displayLabel.text = displayString
        lastButtonPushed = "6"
        buttonsClicked++
    }
    
    @IBAction func sevenButtonPressed(sender: AnyObject) {
        displayString += "7"
        displayLabel.text = displayString
        lastButtonPushed = "7"
        buttonsClicked++
    }
    
    @IBAction func eightButtonPressed(sender: AnyObject) {
        displayString += "8"
        displayLabel.text = displayString
        lastButtonPushed = "8"
        buttonsClicked++
    }
    
    @IBAction func nineButtonPressed(sender: AnyObject) {
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

