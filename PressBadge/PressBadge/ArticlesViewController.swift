//
//  ArticlesViewController.swift
//  PressBadge
//
//  Created by Travis Henrichs on 4/29/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class ArticlesViewController: UITableViewController {

    var storyList: NewsStories = NewsStories();
    var urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Sports&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476";
    var selectedStory: Story?
    var part: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (part?.hasPrefix("Science") != nil && part?.hasPrefix("Science") == true) {
            urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Science&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476"
        }
        else if part?.hasPrefix("Politics") != nil && part?.hasPrefix("Politics") == true {
            urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Politics&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476"
        }
        else if part?.hasPrefix("Life") != nil && part?.hasPrefix("Life") == true{
            urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Life&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476"
        }
        else if part?.hasPrefix("Local") != nil  && part?.hasPrefix("Local") == true{
            urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Travel&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476"
        }
        storyList.load(urlString) {
            (stories, errorString) -> Void in
            if let unwrappedErrorString = errorString {
                println(unwrappedErrorString)
            } else {
                self.tableView.reloadData()
            }
            self.navigationItem.title = self.part
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storyList.stories.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = storyList.stories[indexPath.row].headline
        cell.detailTextLabel?.text = "\(storyList.stories[indexPath.row].section)"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedStory = storyList.stories[indexPath.row]
        performSegueWithIdentifier("displayWebpage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as! StoryViewController
        destinationViewController.story = selectedStory;
    }


    



}
