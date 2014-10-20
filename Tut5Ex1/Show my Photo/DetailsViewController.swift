//
//  DetailsViewController.swift
//  Show my Photo
//
//  Created by Megamanhxh on 9/29/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    var name = "";
    var photo = "";

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        //nameLabel.text = "Micky Mouse"
        //photoImageView.image = UIImage(named: "micky_photo.png")
        
        nameLabel.text = name
        photoImageView.image = UIImage(named: photo)
        
    }
    @IBAction func backButton(sender: UIButton) {
        //self.dismissViewControllerAnimated(true, completion: nil)
    }
}
