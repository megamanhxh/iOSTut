//
//  ViewController.swift
//  Welcome User
//
//  Created by Megamanhxh on 9/25/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sayWelcomeMethod(sender: UIButton) {
        welcomeText.text = userText.text;
    }

    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var userText: UITextField!
}

