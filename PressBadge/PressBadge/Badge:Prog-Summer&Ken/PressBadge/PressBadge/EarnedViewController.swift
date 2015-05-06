//
//  EarnedViewController.swift
//  PressBadge
//
//  Created by Summer Storie on 5/4/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class EarnedViewController: UITableViewController {
    
    var earnedBadge: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.earnedBadge.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        
        cell.textLabel!.text = earnedBadge[indexPath.row]
        
        var imageName = UIImage(named: earnedBadge[indexPath.row])
        cell.imageView!.image = imageName
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }
    
    //    func locationSwitchToggled() {
    //        reminder!.locationOn = !(reminder!.locationOn)
    //
    //        var indexPath: [NSIndexPath!] = [NSIndexPath(forRow: 1, inSection: 2)]
    //
    //        tableView.beginUpdates()
    //        if reminder!.locationOn {
    //            tableView.insertRowsAtIndexPaths(indexPath, withRowAnimation: .Fade)
    //        } else {
    //            tableView.deleteRowsAtIndexPaths(indexPath, withRowAnimation: .Fade)
    //        }
    //        tableView.endUpdates()
    //    }
    
}
