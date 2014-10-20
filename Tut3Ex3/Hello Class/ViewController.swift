//
//  ViewController.swift
//  Hello Class
//
//  Created by Megamanhxh on 9/22/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnDecidedView(sender: UIButton) {
        //when user click the button
        var actionCtrl = UIAlertController(title: "Are you sure?", message: "Think Carefully", preferredStyle: UIAlertControllerStyle.Alert)
        
        var actionYes = UIAlertAction(title: "Submit", style: .Default, handler: (actionYesHandler))
        
        var actionNo = UIAlertAction(title: "Discard", style: UIAlertActionStyle.Destructive, handler: (actionNoHandler))
        
        actionCtrl.addAction(actionYes);
        actionCtrl.addAction(actionNo);
        
        presentViewController(actionCtrl, animated: true, completion: nil)
        
    }
    
    func actionYesHandler(action :UIAlertAction!)->Void {
        var actionCtrl = UIAlertController(title: "Submitted", message: "A confirmation sms will be sent to you soon", preferredStyle: UIAlertControllerStyle.Alert)
        
        var actionYes = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        
        actionCtrl.addAction(actionYes);
        
        presentViewController(actionCtrl, animated: true, completion: nil)

    }
    
    func actionNoHandler(action :UIAlertAction!)->Void {
        var actionCtrl = UIAlertController(title: "Choose Carefully", message: "Your data may be permanently lost", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        var actionYes = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
        
        var actionCancel = UIAlertAction(title: "Move to Trash", style: .Cancel, handler: nil)
        
        var actionNo = UIAlertAction(title: "Delete Permanent", style: .Destructive, handler: nil)
        
        actionCtrl.addAction(actionYes);
        actionCtrl.addAction(actionNo);
        actionCtrl.addAction(actionCancel);
        
        presentViewController(actionCtrl, animated: true, completion: nil)
    }

}

