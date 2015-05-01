//
//  StoryViewController.swift
//  testing
//
//  Created by Travis Henrichs on 4/23/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

        
        var storyList: NewsStories = NewsStories();
        let urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Sports&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476";
        var selectedStory: Story?
        
        
    @IBOutlet weak var storiesTableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            storyList.load(urlString) {
                (stories, errorString) -> Void in
                if let unwrappedErrorString = errorString {
                    println(unwrappedErrorString)
                } else {
                    self.storiesTableView.reloadData()
                }
            }
            
        }
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return storyList.stories.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("storyCell", forIndexPath: indexPath) as! UITableViewCell
            
            cell.textLabel?.text = storyList.stories[indexPath.row].headline
            cell.detailTextLabel?.text = "\(storyList.stories[indexPath.row].section)"
            
            return cell
        }
        
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            selectedStory = storyList.stories[indexPath.row]
            performSegueWithIdentifier("storySegue", sender: self)
        }
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let destinationViewController = segue.destinationViewController as! WebViewController
            destinationViewController.story = selectedStory;
        }
        
        @IBAction func returnToStoriesList(segue: UIStoryboardSegue) {
            
        }
    }
