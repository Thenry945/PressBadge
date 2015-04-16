//
//  BadgeViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assisted by Kenneth Michael

import UIKit

class BadgeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    
    @IBOutlet weak var badgeStatusTable: UITableView!
    
    let swiftBlogs = ["Ray Wenderlich", "NSHipster", "iOS Developer Tips", "Jameson Quave", "Natasha The Robot", "Coding Explorer", "That Thing In Swift", "Andrew Bancroft", "iAchieved.it", "Airspeed Velocity"]
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 // This was put in mainly for my own unit testing
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftBlogs.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = badgeStatusTable.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        // set cell's textLabel.text property
        // set cell's detailTextLabel.text property
        return cell
    }
    
}