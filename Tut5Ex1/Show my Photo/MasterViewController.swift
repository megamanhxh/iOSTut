//
//  MasterViewController.swift
//  Show my Photo
//
//  Created by Megamanhxh on 9/29/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier == "toDetails" {
            let detailsViewController =
            segue.destinationViewController as DetailsViewController
            detailsViewController.name = "Micky Mouse"
            detailsViewController.photo = "micky_photo.png"
        }
    }

    
}
