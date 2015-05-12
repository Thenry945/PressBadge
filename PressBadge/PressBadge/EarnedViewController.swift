//
//  EarnedViewController.swift
//  PressBadge
//
//  Created by Summer Storie on 5/4/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class EarnedViewController: UITableViewController {

    var badge: String?
 
    var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
    
    var level1: [String] = ["Sports 1", "Science 1", "Local 1", "Life 1", "Politics 1"]
    var level2: [String] = ["Sports 2", "Science 2", "Local 2", "Life 2", "Politics 2"]
    var level3: [String] = ["Sports 3", "Science 3", "Local 3", "Life 3", "Politics 3"]
    var level4: [String] = ["Sports 4", "Science 4", "Local 4", "Life 4", "Politics 4"]
    var level5: [String] = ["Sports 5", "Science 5", "Local 5", "Life 5", "Politics 5"]
    
    //sports, science, local, life, politics
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! EarnedTableViewCell

//        if level5[indexPath.row] <= BadgeLevels[indexPath.row]{
//            
//            cell.textLabel!.text = level5[indexPath.row]
//            cell.image5.image = UIImage(named: level5[indexPath.row])
//            
//        } else if (level4[indexPath.row] <= BadgeLevels[indexPath.row]){
//            
//            cell.textLabel!.text = level4[indexPath.row]
//            cell.image4.image = UIImage(named: level4[indexPath.row])
//            
//        } else if (level3[indexPath.row] <= BadgeLevels[indexPath.row]){
//            
//            cell.textLabel!.text = level3[indexPath.row]
//            cell.image3.image = UIImage(named: level3[indexPath.row])
//            
//        } else if (level2[indexPath.row] <= BadgeLevels[indexPath.row]){
//            
//            cell.textLabel!.text = level2[indexPath.row]
//            cell.image2.image = UIImage(named: level2[indexPath.row])
//            
//        } else if (level1[indexPath.row] <= BadgeLevels[indexPath.row]){
//            
//            cell.textLabel!.text = level1[indexPath.row]
//            cell.image1.image = UIImage(named: level1[indexPath.row])
//            
//        }
        
        if BadgeLevels[indexPath.row] <= level1[indexPath.row]{
            
            cell.textLabel!.text = level1[indexPath.row]
            cell.image1.image = UIImage(named: level1[indexPath.row])
            
        } else if (BadgeLevels[indexPath.row] <= level2[indexPath.row]){
            
            //cell.textLabel!.text = level2[indexPath.row]
            cell.image1.image = UIImage(named: level1[indexPath.row])
            cell.image2.image = UIImage(named: level2[indexPath.row])

        }else if (BadgeLevels[indexPath.row] <= level3[indexPath.row]){
            
            cell.textLabel!.text = level3[indexPath.row]
            cell.image3.image = UIImage(named: level3[indexPath.row])
            
        }else if (BadgeLevels[indexPath.row] <= level4[indexPath.row]){
            
            cell.textLabel!.text = level4[indexPath.row]
            cell.image4.image = UIImage(named: level4[indexPath.row])
            
        }else if (BadgeLevels[indexPath.row] <= level5[indexPath.row]){
            
            cell.textLabel!.text = level5[indexPath.row]
            cell.image5.image = UIImage(named: level5[indexPath.row])
            
        }
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }


}
