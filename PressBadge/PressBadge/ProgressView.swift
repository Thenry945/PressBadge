//
//  ProgressView.swift
//  PressBadge
//
//  Created by University of Missouri on 5/4/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class ProgressView: UIViewController {
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var localLabel: UILabel!
    @IBOutlet weak var localBar: UIProgressView!
    
    @IBOutlet weak var newsLabel: UILabel!
    @IBOutlet weak var newsBar: UIProgressView!
    
    @IBOutlet weak var whateverLabel: UILabel!
    @IBOutlet weak var whateverBar: UIProgressView!
    
    @IBOutlet weak var obitsLabel: UILabel!
    @IBOutlet weak var obitsBar: UIProgressView!

    var science = 0.4 //if this was from a database thing instead of static, it would dynamically change, but I have no idea how to do the NSKeyedArchiver stuff
    var local = 0.3
    var news = 0.5
    var whatever = 0.6
    var obits = 0.3
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.setProgress(Float(science), animated: false)
        percentLabel.text = String(format : "%.2f",science)
        
        localBar.setProgress(Float(local), animated: false)
        localLabel.text = String(format : "%.2f",local)
        
        newsBar.setProgress(Float(news), animated: false)
        newsLabel.text = String(format : "%.2f",news)
        
        whateverBar.setProgress(Float(whatever), animated: false)
        whateverLabel.text = String(format : "%.2f",whatever)
        
        obitsBar.setProgress(Float(obits), animated: false)
        obitsLabel.text = String(format : "%.2f",obits)
    }


}
