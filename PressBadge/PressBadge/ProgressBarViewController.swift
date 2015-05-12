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
    
    var categories: [String] = ["Science", "Life", "Local", "Politics", "Sports"]
    
    var earnedBadges = ["Science1","Life1","Sports1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellCategories")
        
    }
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
    //        if (segue.identifier == "toStories") {
    //            var svc = segue.destinationViewController as! StoryViewController;
    //
    //            svc.toPass = categories[
    //
    //        }
    //    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cellCategories") as! UITableViewCell
        
        cell.textLabel!.text = categories[indexPath.row]
        
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
        else if ( segue.identifier == "EarnedBadges"){
            
            var destinationVC = segue.destinationViewController as! EarnedViewController
            
            destinationVC.earnedProgress = earnedBadges
            
        }
        
    }
    
    
    
}