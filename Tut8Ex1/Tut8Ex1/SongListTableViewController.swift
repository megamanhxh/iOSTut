//
//  SongListTableViewController.swift
//  Tut8Ex1
//
//  Created by Megamanhxh on 10/20/14.
//  Copyright (c) 2014 Megamanhxh. All rights reserved.
//

import UIKit

class SongListTableViewController: UITableViewController {

    
    //creating arrays
//    var songs = ["Don't mine at night", "Awoken","Picture Perfect Pony"]
//    var singers = ["ShadyVoxVT","WoodenToaster","Mandopony & EileMonty"]
//    var albums = ["Button Adventure","Rainbow Factory","My Little Pony - Fan PMV"]
    
    var singers: [String] = [];
    var songs: [String] = [];
    var albums: [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        singers = ["Harrell Williams", "Calvin Harris","John Legend","Mr Probz"]
        songs = ["Happy","Summer","All of Me","Waves"]
        albums = ["album1.jpg","album2.jpg","album3.jpg","album4.jpg"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return songs.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        // retrieving objects from the cell with tags
        let songImageView: UIImageView = cell.viewWithTag(100) as UIImageView;
        let songNameLabel: UILabel = cell.viewWithTag(101) as UILabel;
        let songSingerLabel: UILabel = cell.viewWithTag(102) as UILabel;
        songImageView.image = UIImage(named: albums[indexPath.row]);
        songNameLabel.text = songs[indexPath.row];
        songSingerLabel.text = singers[indexPath.row];
        
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // segue identifier, is the link name between views
        if (segue.identifier == "toSongDetails") {
            let songDetailsViewController = segue.destinationViewController as SongDetailsViewController;
            let cell = sender as UITableViewCell;
            let songLabel = cell.viewWithTag(101) as UILabel;
            let singerLabel = cell.viewWithTag(102) as UILabel;
            
            songDetailsViewController.songTitle = songLabel.text!;
            songDetailsViewController.songSinger = singerLabel.text!;
        }
    }

    
    
    

}
