//
//  StatusViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assisted by Kenneth Michael

import UIKit

class StatusViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    @IBOutlet weak var badgeStatusTable: UITableView!
    
    

}
