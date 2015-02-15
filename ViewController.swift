//
//  ViewController.swift
//  Calculator
//
//  Created by 相澤渉太 on 2015/02/13.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var total:Int = 0
    var mode:Int = 0
    var valueString:String! = ""
    var lastButtonWasMode:Bool = false
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func tappedNumber(sender: UIButton) {
        var str:String! = sender.titleLabel!.text
        var num:Int! = str.toInt()
        if (num == 0 && total == 0 )
        {
            return
        }
        if (lastButtonWasMode)
        {
            lastButtonWasMode = false
            valueString = ""
        }
        valueString = valueString.stringByAppendingString(str)
       
        var formatter:NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        var n:NSNumber = formatter.numberFromString(valueString)!
        
        label.text = formatter.stringFromNumber(n)

    
        if ( total == 0)
        {
            total = valueString.toInt()!
        }
    }
    
    
    
    @IBAction func tappedPlus(sender: AnyObject) {
        self.setMode(1)
    }

    
    @IBAction func tappedMinus(sender: AnyObject) {
        self.setMode(-1)
    }
   
    
    
    @IBAction func tappedMultification(sender: AnyObject) {
        self.setMode(2)
    }
    
    @IBAction func tappedEqual(sender: AnyObject) {
        if (mode == 0)
        {
            return
        }
        var iNum:Int = valueString.toInt()!
        if (mode == 1)
        {
            total += iNum
        }
        if (mode == -1)
        {
            total -= iNum
        }
        if (mode == 2)
        {
            total *= iNum
        }
        
        valueString = "\(total)"

        var formatter:NSNumberFormatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        var n:NSNumber = formatter.numberFromString(valueString)!
        
        label.text = formatter.stringFromNumber(n)

        mode = 0
    }
    
    
    @IBAction func tappedClear(sender: AnyObject) {
        total = 0
        mode = 0
        valueString = ""
        label.text = "0"
        lastButtonWasMode = false
    }

    
    func setMode(m:Int)
    {
        if (total == 0)
        {
            return
        }
        mode = m
        lastButtonWasMode = true
        total = valueString.toInt()!
    
    }
}

