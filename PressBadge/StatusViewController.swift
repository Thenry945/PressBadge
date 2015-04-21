//
//  StatusViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assisted by Kenneth Michael

import UIKit

class StatusViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var badgeStatusTable: UITableView!
    
    let badges = ["Science 1", "Life 1", "Health 1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return badges.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = badgeStatusTable.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        return cell
    }

}
