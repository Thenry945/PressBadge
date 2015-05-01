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
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (story != nil){
            
            self.navigationItem.title = story?.section
            
            var url = story!.webURL
            UIWebView.loadRequest(webView)(NSURLRequest(URL: NSURL(string: url)!))
        }
    }


}
