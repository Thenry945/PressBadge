//
//  StatusViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assisted by Kenneth Michael

import UIKit

class StatusViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var image: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    @IBOutlet weak var badgeStatusTable: UITableView!
    
    let badges = ["Life1badge.png", "Life2badge.png", "Life3badge.png"];

<<<<<<< HEAD
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
=======
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
>>>>>>> origin/UIBadgeViewLogic
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return badges.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = badgeStatusTable.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        return cell
    }

}
