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
        valueString = valueString.stringByAppendingString(str)
        label.text = valueString!
        total = valueString.toInt()!
    }
    
    @IBAction func tappedPlus(sender: AnyObject) {
    }

    
    @IBAction func tappedMinus(sender: AnyObject) {
    }
   
    
    @IBAction func tappedEqual(sender: AnyObject) {
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
    
    }
}

