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
    
    @IBAction func plusButtonPressed (sender: AnyObject) {
        displayString += "+"
        displayLabel.text = displayString
        lastButtonPushed = "+"
    }
    
    @IBAction func minusButtonPressed (sender: AnyObject) {
        
    }
    
    @IBAction func multiplyButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func divisionButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func equalButtonPressed(sender: AnyObject) {
    }
    
    
    @IBAction func zeroButtonPressed (sender: AnyObject) {
        displayString += String(0)
        displayLabel.text = displayString
        lastButtonPushed = "0"
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
        print(displayString)
        print(prevNum)
        print(newNum)
    }
    
    
    @IBAction func twoButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func threeButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func fourButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func fiveButtonPressed(sender: AnyObject) {
    }
    
    @IBAction func sixButtonPressed(sender: AnyObject) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

