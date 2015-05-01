//
//  Story.swift
//  testing
//
//  Created by Travis Henrichs on 4/23/15.
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