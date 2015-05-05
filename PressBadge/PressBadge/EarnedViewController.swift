//
//  EarnedViewController.swift
//  PressBadge
//
//  Created by Summer Storie on 5/4/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class EarnedViewController: UITableViewController {

    
    var stories: [String] = ["Science1badge", "Life1badge", "Politics3badge", "sports 4", "tech 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.stories.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
       
            cell.textLabel!.text = stories[indexPath.row]
            
                        var imageName = UIImage(named: stories[indexPath.row])
                        cell.imageView!.image = imageName
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }


}
