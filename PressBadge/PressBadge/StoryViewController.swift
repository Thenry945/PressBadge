//
//  StoryViewController.swift
//  PressBadge
//
//  Created by Travis Henrichs on 4/29/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    var story: Story?
    var test = 0.5
    var badge: String?
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(badge)
        var timer = NSTimer.scheduledTimerWithTimeInterval(15, target: self, selector: "update", userInfo: nil, repeats: false)
        if (story != nil){
            
            self.navigationItem.title = story?.section
            
            var url = story!.webURL
            UIWebView.loadRequest(webView)(NSURLRequest(URL: NSURL(string: url)!))
            
        }

    }
    func update() {
        if (badge?.hasPrefix("Science") == true ) {
            test = 0.9
            println(test)
        }
        else if (badge?.hasPrefix("Politics") == true ) {
            
        }
        else if (badge?.hasPrefix("Life") == true ){
            
        }
        else if (badge?.hasPrefix("Local") == true ) {
            
        }
        else if (badge?.hasPrefix("Sports") == true ) {
            
        }
    }
    
}
