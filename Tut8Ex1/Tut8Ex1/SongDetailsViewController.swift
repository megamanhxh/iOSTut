//
//  SongDetailsViewController.swift
//  Tut8Ex1
//
//  Created by Megamanhxh on 10/20/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class SongDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var songTitle = "";
    var songSinger = "";
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        titleLabel.text = songTitle;
        songLabel.text = songSinger;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
