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
            cell.imageView!.image = UIImage(named: earnedBadge[indexPath.row])
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }


}
