//
//  StoryViewController.swift
//  PressBadge
//
//  Created by Summer & Kenneth
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    var story: Story?
    var badge: String?
    //use these to reset
    //var BadgeLevels: [String] = ["Sports 1", "Science 1", "Local 1", "Life 1", "Politics 1"]
    //   var BadgeProgress = [Float](count: 5, repeatedValue: 0.0)
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "update", userInfo: nil, repeats: false)
        if (story != nil){
            
            self.navigationItem.title = story?.section
            var url = story!.webURL
            UIWebView.loadRequest(webView)(NSURLRequest(URL: NSURL(string: url)!))
            
        }
        
    }
    
    //Sports 1", "Science 1", "Local 1", "Life 1", "Politics 1
    func update() {
        if (badge?.hasPrefix("Science") == true ) {
            
            var BadgeProgress = NSUserDefaults.standardUserDefaults().objectForKey("BadgeProgress")! as! [Float]
            var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
            BadgeProgress[1] = BadgeProgress[1] + 0.2
            //BadgeProgress[1] = 0.0
            if (BadgeProgress[1] >= 1.0) {
                BadgeProgress[1] = 0.0
                if BadgeLevels[1] == "Science 1" {
                    openAlertView("Science 1")
                    BadgeLevels[1] = "Science 2"
                }
                else if BadgeLevels[1] == "Science 2" {
                    openAlertView("Science 2")
                    BadgeLevels[1] = "Science 3"
                    
                }
                else if BadgeLevels[1] == "Science 3" {
                    openAlertView("Science 3")
                    BadgeLevels[1] = "Science 4"
                    
                }
                else if BadgeLevels[1] == "Science 4" {
                    openAlertView("Science 4")
                    BadgeLevels[1] = "Science 5"
                    
                }
            }
            NSUserDefaults.standardUserDefaults().setObject(BadgeProgress, forKey: "BadgeProgress")
            NSUserDefaults.standardUserDefaults().setObject(BadgeLevels, forKey: "BadgeLevels")
            println(BadgeProgress)
            println(BadgeLevels)
        }
            
        else if (badge?.hasPrefix("Politics") == true ) {
            var BadgeProgress = NSUserDefaults.standardUserDefaults().objectForKey("BadgeProgress")! as! [Float]
            var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
            BadgeProgress[4] = BadgeProgress[4] + 0.2
            //BadgeProgress[4] = 0.0
            if (BadgeProgress[4] >= 1.0) {
                BadgeProgress[4] = 0.0
                if BadgeLevels[4] == "Politics 1" {
                    openAlertView("Politics 1")
                    BadgeLevels[4] = "Politics 2"
                }
                else if BadgeLevels[4] == "Politics 2" {
                    openAlertView("Politics 2")
                    BadgeLevels[4] = "Politics 3"
                }
                else if BadgeLevels[4] == "Politics 3" {
                    openAlertView("Politics 3")
                    BadgeLevels[4] = "Politics 4"
                }
                else if BadgeLevels[4] == "Politics 4" {
                    openAlertView("Politics 4")
                    BadgeLevels[4] = "Politics 5"
                }
            }
            NSUserDefaults.standardUserDefaults().setObject(BadgeProgress, forKey: "BadgeProgress")
            NSUserDefaults.standardUserDefaults().setObject(BadgeLevels, forKey: "BadgeLevels")
            println(BadgeProgress)
            println(BadgeLevels)
        }
        else if (badge?.hasPrefix("Life") == true ){
            var BadgeProgress = NSUserDefaults.standardUserDefaults().objectForKey("BadgeProgress")! as! [Float]
            var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
            BadgeProgress[3] = BadgeProgress[3] + 0.2
            //BadgeProgress[3] = 0.0
            if (BadgeProgress[3] >= 1.0) {
                BadgeProgress[3] = 0.0
                if BadgeLevels[3] == "Life 1" {
                    openAlertView("Life 1")
                    BadgeLevels[3] = "Life 2"
                }
                else if BadgeLevels[3] == "Life 2" {
                    openAlertView("Life 2")
                    BadgeLevels[3] = "Life 3"
                }
                else if BadgeLevels[3] == "Life 3" {
                    openAlertView("Life 3")
                    BadgeLevels[3] = "Life 4"
                }
                else if BadgeLevels[3] == "Life 4" {
                    openAlertView("Life 4")
                    BadgeLevels[3] = "Life 5"
                }
            }
            NSUserDefaults.standardUserDefaults().setObject(BadgeProgress, forKey: "BadgeProgress")
            NSUserDefaults.standardUserDefaults().setObject(BadgeLevels, forKey: "BadgeLevels")
            println(BadgeProgress)
            println(BadgeLevels)
        }
        else if (badge?.hasPrefix("Local") == true ) {
            var BadgeProgress = NSUserDefaults.standardUserDefaults().objectForKey("BadgeProgress")! as! [Float]
            var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
            BadgeProgress[2] = BadgeProgress[2] + 0.2
            //BadgeProgress[2] = 0.0
            if (BadgeProgress[2] >= 1.0) {
                BadgeProgress[2] = 0.0
                if BadgeLevels[2] == "Local 1" {
                    openAlertView("Local 1")
                    BadgeLevels[2] = "Local 2"
                }
                else if BadgeLevels[2] == "Local 2" {
                    openAlertView("Local 2")
                    BadgeLevels[2] = "Local 3"
                }
                else if BadgeLevels[2] == "Local 3" {
                    openAlertView("Local 3")
                    BadgeLevels[2] = "Local 4"
                }
                else if BadgeLevels[2] == "Local 4" {
                    openAlertView("Local 4")
                    BadgeLevels[2] = "Local 5"
                }
            }
            NSUserDefaults.standardUserDefaults().setObject(BadgeProgress, forKey: "BadgeProgress")
            NSUserDefaults.standardUserDefaults().setObject(BadgeLevels, forKey: "BadgeLevels")
            println(BadgeProgress)
            println(BadgeLevels)
        }
        else if (badge?.hasPrefix("Sports") == true ) {
            var BadgeProgress = NSUserDefaults.standardUserDefaults().objectForKey("BadgeProgress")! as! [Float]
            var BadgeLevels = NSUserDefaults.standardUserDefaults().objectForKey("BadgeLevels")! as! [String]
            BadgeProgress[0] = BadgeProgress[0] + 0.2
            //BadgeProgress[0] = 0.0
            if (BadgeProgress[0] >= 1.0) {
                BadgeProgress[0] = 0.0
                if BadgeLevels[0] == "Sports 1" {
                    openAlertView("Sports 1")
                    BadgeLevels[0] = "Sports 2"
                }
                else if BadgeLevels[0] == "Sports 2" {
                    openAlertView(true)
                    BadgeLevels[0] = "Sports 3"
                }
                else if BadgeLevels[0] == "Sports 3" {
                    openAlertView(true)
                    BadgeLevels[0] = "Sports 4"
                }
                else if BadgeLevels[0] == "Sports 4" {
                    openAlertView(true)
                    BadgeLevels[0] = "Sports 5"
                }
            }
            NSUserDefaults.standardUserDefaults().setObject(BadgeProgress, forKey: "BadgeProgress")
            NSUserDefaults.standardUserDefaults().setObject(BadgeLevels, forKey: "BadgeLevels")
            println(BadgeProgress)
            println(BadgeLevels)
        }
    }
    
    func dismissAlert(alert: UIAlertAction!)
    {
        self.dismissViewControllerAnimated(true , completion: nil)
    }
    
    @IBAction func openAlertView(badgeType: AnyObject) {
        
        let alrtController : UIAlertController = UIAlertController(title: "You've Earned a \(badgeType)!", message: "Check out your badges in Earned", preferredStyle:.Alert)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: dismissAlert)
        
        alrtController.addAction(cancelAction)
        
        self.presentViewController(alrtController, animated: true, completion: nil)
        
    }
    
}