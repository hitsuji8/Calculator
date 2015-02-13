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
    }
    
    @IBAction func tappedPlus(sender: AnyObject) {
    }

    
    @IBAction func tappedMinus(sender: AnyObject) {
    }
   
    
    @IBAction func tappedEqual(sender: AnyObject) {
    }
    
    
    @IBOutlet weak var tappedClear: UIButton!
    
    func setMode(m:Int)
    {
    
    }
}

