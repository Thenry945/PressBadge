//
//  ProgressBarViewController.swift
//  TableViewImages
//
//  Created by Summer Storie on 4/25/15.
//  Copyright (c) 2015 Summer Storie. All rights reserved.
//

import UIKit

class ProgressBarViewController: UITableViewController {
    
    var selectedCategory = ""
    
    var categories: [String] = ["Science 1", "Life 1", "Local 1", "Politics 1", "Sports 1", "Science 2", "Life 2", "Local 2", "Politics 2", "Sports 2", "Science 3", "Life 3", "Local 3", "Politics 3", "Sports 3", "Science 4", "Life 4", "Local 4", "Politics 4", "Sports 4",
        "Science 5", "Life 5", "Local 5", "Politics 5", "Sports 5"]
    
    var earnedBadges = ["Science 1", "Life 1", "Sports 1"] //this will need to be .appended by kenneth when progress bar reaches 100%, this array will be appended.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellCategories")
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count;
    }
    var science = 0.5
    var local = 0.3
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var selected = 0.0
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cellCategories") as! ProgressTableViewCell
//
//        for Badge in categories{
//            while (rowValue == "Science 1" && selected < 0) {
//                selected = selected + 0.2
//            }
////            else if {
////                earnedBadges.append(categories[]);
////            }
//            
//        }
//        
        cell.textLabel!.text = categories[indexPath.row]
        println(categories[indexPath.row])
        let rowValue = categories[indexPath.row]
        if rowValue == "Science I" {
            selected = science
        }
        else if rowValue == "Local I" {
            selected = local
        }
        
        cell.progressBar.setProgress(Float(selected), animated: false)

       return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        
        // Create a variable that you want to send based on the destination view controller
        // You can get a reference to the data by using indexPath shown below
        selectedCategory = categories[indexPath.row]
        
        self.performSegueWithIdentifier("CategoriesToArticles", sender: self)
        
        // Let's assume that the segue name is called playerSegue
        // This will perform the segue and pre-load the variable for you to use
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ( segue.identifier == "CategoriesToArticles") {
            // Create an instance of PlayerTableViewController and pass the variable
            
            var destinationVC = segue.destinationViewController as! ArticlesViewController
            
            destinationVC.part = selectedCategory
        }
        else if( segue.identifier == "EarnedViewController"){
            var destinationVC = segue.destinationViewController as! EarnedViewController
            
            destinationVC.earnedBadge = earnedBadges
        }
    }
    
//    override func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool {
////        
////        let selected = categories
////        
////        for selected in earnedBadges {
////            return true
////        }
////    
////    }
//    }
}



