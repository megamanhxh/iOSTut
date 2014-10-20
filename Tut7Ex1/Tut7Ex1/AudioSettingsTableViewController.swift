//
//  AudioSettingsTableViewController.swift
//  Tut7Ex1
//
//  Created by Megamanhxh on 10/16/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class AudioSettingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        volumeLabel.text = "\(volumeStepper.value)";
        bassLabel.text = "\(bassSlider.value * 100)"
    }
    @IBOutlet weak var streamingSwitch: UISwitch!
    @IBOutlet weak var streamingLabel: UILabel!
    @IBOutlet weak var equalizerSwitch: UISwitch!
    @IBOutlet weak var equalizerLabel: UILabel!
    @IBOutlet weak var volumeStepper: UIStepper!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var bassSlider: UISlider!
    @IBOutlet weak var bassLabel: UILabel!
    @IBOutlet weak var stereoSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var stereoLabel: UILabel!
    
    @IBAction func audioStreamChanged(sender: UISwitch) {
        if (streamingSwitch.on) {
            streamingLabel.text = "ON"
        } else {
            streamingLabel.text = "OFF"
        }
    }
    
    @IBAction func equalizerSwitchChanged(sender: UISwitch) {
        if (equalizerSwitch.on) {
            equalizerLabel.text = "ON"
        } else {
            equalizerLabel.text = "OFF"
        }
    }
    @IBAction func volumeStepperChanged(sender: UIStepper) {
        volumeLabel.text = "\(volumeStepper.value)"
    }
    @IBAction func bassSliderChanged(sender: UISlider) {
        bassLabel.text = "\(bassSlider.value)"
    }
    @IBAction func stereoSegmentedControlChanged(sender: UISegmentedControl) {
        if(stereoSegmentedControl.selectedSegmentIndex == 0) {
            stereoLabel.text = "\(stereoSegmentedControl.titleForSegmentAtIndex(0)!) Mode";
        } else if (stereoSegmentedControl.selectedSegmentIndex == 1) {
            stereoLabel.text = "\(stereoSegmentedControl.titleForSegmentAtIndex(1)!) Mode";
        }
        
    }
}
