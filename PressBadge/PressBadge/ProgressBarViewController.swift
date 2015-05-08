//
//  ProgressBarViewController.swift
//  TableViewImages
//
//  Created by Summer Storie on 4/25/15.
//  Copyright (c) 2015 Summer Storie. All rights reserved.
//

import UIKit

class ProgressBarViewController: UITableViewController {

    var categories = [Category]()
    
    var selectedCategory = ""
    
    var earnedBadges: [String] = ["Science 1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        categories = DataHandler.getCategories()
        tableView.reloadData()
            //NSKeyedArchiver.archiveRootObject(categories, toFile: "categories.swift")
//        
//            let porgressOfUser:[Category] = NSKeyedUnarchiver.unarchiveObjectWithFile("categories.swift") as! [Category]
//            println(porgressOfUser)
    
//        if let UserProgress = NSUserDefaults.standardUserDefaults().objectForKey("title") as? NSData {
//            let title: AnyObject? = NSKeyedUnarchiver.unarchiveObjectWithData(UserProgress)
//        }
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories.count;
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        var selected = 0.0

        var cell = tableView.dequeueReusableCellWithIdentifier("cellCategories") as! ProgressTableViewCell
        let cat = categories[indexPath.row]
        cell.textLabel!.text = cat.title
       
        if let UserProgress = NSUserDefaults.standardUserDefaults().objectForKey("title") as? NSData {
            let title: AnyObject? = NSKeyedUnarchiver.unarchiveObjectWithData(UserProgress)
        }
        
        let rowValue = categories[indexPath.row]
        
        
//        let rowValue = badges[indexPath.row]
//        if rowValue == "Science 1" {
//            selected = science
//        }
//        else if rowValue == "Local 1" {
//            selected = local
//        }
//        
        
        //take categories[indexPath.row] and check where progress bar is, once we figure that out, get progressbar progress from datasource
        
        cell.progressBar.setProgress(Float(selected), animated: false)

       return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        

        let selected = categories[indexPath.row]
        selectedCategory = selected.title
        
        self.performSegueWithIdentifier("CategoriesToArticles", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ( segue.identifier == "CategoriesToArticles") {
            
            var destinationVC = segue.destinationViewController as! ArticlesViewController
            
            destinationVC.part = selectedCategory
        }
        else if( segue.identifier == "EarnedViewController"){
            var destinationVC = segue.destinationViewController as! EarnedViewController
            
            destinationVC.earnedBadge = earnedBadges
        }
        
    }
    
//    override func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool {}

//    Alert code for IOS8
//    var alert = UIAlertController(title: "Hey", message: "This is  one Alert", preferredStyle: UIAlertControllerStyle.Alert)
//    alert.addAction(UIAlertAction(title: "Working!!", style: UIAlertActionStyle.Default, handler: nil))
//    self.presentViewController(alert, animated: true, completion: nil)
}




