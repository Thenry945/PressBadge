//
//  WebViewController.swift
//  testing
//
//  Created by Travis Henrichs on 4/28/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var navTitle: UINavigationItem!
    @IBOutlet weak var webView: UIWebView!
    var story : Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (story != nil){
            
            navTitle.title = story?.section
            
            var url = story!.webURL
            UIWebView.loadRequest(webView)(NSURLRequest(URL: NSURL(string: url)!))
        }
    }
    
    @IBAction func back(sender: AnyObject) {
        performSegueWithIdentifier("returnToStoriesList", sender: self)
    }

}
