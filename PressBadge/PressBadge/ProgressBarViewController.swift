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
    
    var categories: [String] = ["Science I", "Life I", "Local I", "Politics I", "Sports I", "Science II", "Life II", "Local II", "Politics II","Sports II", "Science III", "Life III", "Local III", "Politics III", "Sports III", "Science IV", "Life IV", "Local IV", "Politics IV", "Sports IV", "Science V", "Life V", "Local V", "Politics V", "Sports V"]
    var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.BadgeLevels.count;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var selected : Float = 0.0
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cellCategories") as! ProgressTableViewCell
        
        cell.textLabel!.text = BadgeLevels[indexPath.row]
        println(BadgeLevels[indexPath.row])
        var BadgeProgress = NSUserDefaults.standardUserDefaults().objectForKey("BadgeProgress")! as! [Float]
        let rowValue = BadgeLevels[indexPath.row]
        //Sports 1", "Science 1", "Local 1", "Life 1", "Politics 1
        if (rowValue.hasPrefix("Sports") == true ) {
            selected = BadgeProgress[0]
        }
        else if (rowValue.hasPrefix("Science") == true ) {
            selected = BadgeProgress[1]
        }
        else if (rowValue.hasPrefix("Local") == true ) {
            selected = BadgeProgress[2]
        }
        else if (rowValue.hasPrefix("Life") == true ) {
            selected = BadgeProgress[3]
        }
        else if (rowValue.hasPrefix("Politics") == true ) {
            selected = BadgeProgress[4]
        }
        
        //var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
        cell.progressBar.setProgress(selected, animated: false)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        
        // Create a variable that you want to send based on the destination view controller
        // You can get a reference to the data by using indexPath shown below
        selectedCategory = BadgeLevels[indexPath.row]
        
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
    }
    
    
    
}