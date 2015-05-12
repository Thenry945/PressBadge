//
//  categories.swift
//  PressBadge
//
//  Created by Summer Storie on 5/7/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class Category: NSObject, NSCoding {
    
    var title : String = ""
    var level : Int = 0
    var progress : Int = 0
    
    convenience init(aTitle:String, aLevel:Int, aProgress:Int) {
        self.init()
        title = aTitle
        level = aLevel
        progress = aProgress
    }
    
    // Never call yourself
    required convenience init(coder decoder: NSCoder) {
        self.init()
        self.title = decoder.decodeObjectForKey("title") as! String
        self.level = decoder.decodeIntegerForKey("level")
        self.progress = decoder.decodeIntegerForKey("progress")
    }
    
    // Never call yourself
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(title, forKey: "title")
        aCoder.encodeInteger(level, forKey: "level")
        aCoder.encodeInteger(progress, forKey: "progress")
    }
    
}

