//
//  ProgressTableViewCell.swift
//  PressBadge
//
//  Created by University of Missouri on 5/5/15.
//  Copyright (c) 2015 Kenneth. All rights reserved.
//  Created by Summer 

import UIKit

class ProgressTableViewCell: UITableViewCell {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
