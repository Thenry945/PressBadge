//
//  EarnedTableViewCell.swift
//  PressBadge
//
//  Created by Summer Storie on 5/11/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class EarnedTableViewCell: UITableViewCell {

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var image4: UIImageView!
    
    @IBOutlet weak var image5: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
