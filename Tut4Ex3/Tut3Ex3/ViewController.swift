//
//  ViewController.swift
//  Tut3Ex3
//
//  Created by Megamanhxh on 9/29/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var salaryText: UITextField!
    @IBOutlet weak var taxesText: UITextField!
    @IBOutlet weak var overTimeText: UITextField!
    @IBOutlet weak var netPayText: UILabel!
    
    @IBAction func calculateNetPay(sender: UIButton) {
        
        
        var salary:Int = salaryText.text.toInt()!;
        var taxes:Int = taxesText.text.toInt()!;
        var overTime:Int = overTimeText.text.toInt()!;
        
        var netPay:Int = (salary - taxes) + (overTime * salary * 0.1 )
        //i have no idea what is the caluclation exactly ^^;
        
        netPayText.text = netPay.description;
        textFieldShouldReturn(salaryText);
        textFieldShouldReturn(taxesText);
        textFieldShouldReturn(overTimeText);
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField.resignFirstResponder()) {
            return true;
        } else {
            return false;
        }
    }
    

}

