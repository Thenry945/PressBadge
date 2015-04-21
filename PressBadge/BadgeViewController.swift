//
//  BadgeViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assisted by Kenneth Michael

import UIKit

class BadgeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: "Life1badge.png")

    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    @IBOutlet weak var badgeStatusTable: UITableView!
    
    let badges = ["Life1badge.png", "Life2badge.png", "Life3badge.png"]
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1     }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return badges.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        
        var cell : UITableViewCell
        
        cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! UITableViewCell
        cell.textLabel!.text = self.badges[indexPath.row]
        var image : UIImage = UIImage(named: "Life2badge.png")!
        return cell
    }
    
}