//
//  ViewController.swift
//  Tut6Ex1
//
//  Created by Megamanhxh on 10/13/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        flagImage.image = UIImage(named: flags[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count;
    }

    // variables
    @IBOutlet weak var flagImage: UIImageView!
    var countries = ["Bahrain", "Greece", "UK", "France"]
    var flags = ["bahrain.jpg",
        "greece.jpg", "uk.jpg", "france.jpg"]
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return countries[row];
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        flagImage.image = UIImage(named: flags[row])
    }
    
    
}

