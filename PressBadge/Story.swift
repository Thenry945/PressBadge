//
//  Story.swift
//  PressBadge
//
//  Created by Travis Henrichs on 4/29/15.
//  Created by Summer & Kenneth, too!
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import Foundation


struct StoryInfo{
    var webURL:String
    var headline:String
    var section:String
}

class Story: NSObject {
    
    var webURL: String;
    var headline: String;
    var section: String;
    
    init(forURL: String, forHeadline: String, forSection: String) {
        
        self.webURL = forURL;
        self.headline = forHeadline;
        self.section = forSection;
    }
    
    
}