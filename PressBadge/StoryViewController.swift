//
//  StoryViewController.swift
//  PressBadge
//
//  Created by University of Missouri on 4/16/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    @IBOutlet weak var labelArticle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
            
        labelArticle.text = "You don't always know what you are getting with mass-market cloud computing services. But with SimpliCompute, the picture is clear. SimpliCompute gives you powerful virtual servers you can deploy using just your web browser. That’s enterprise grade technology you can deploy and control on-the-fly."
            
        labelArticle.numberOfLines = 0
            
        labelArticle.preferredMaxLayoutWidth = 700
            
        labelArticle.lineBreakMode = NSLineBreakMode.ByWordWrapping
            
        labelArticle.sizeToFit()
            
        labelArticle.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
