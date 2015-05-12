//
//  ProgressTableViewCell.swift
//  PressBadge
//
//  Created by University of Missouri on 5/5/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

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
