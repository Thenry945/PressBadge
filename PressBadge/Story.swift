//
//  Story.swift
//  PressBadge
//
//  Created by Travis Henrichs on 4/13/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import Foundation

struct StoryInfo{
    var body:String
    var headline:String
    var section:String
    var pub_time:String
}

class Story: NSObject {
    
    var body: String;
    var headline: String;
    var section: String;
    var pub_time: String;
    
    init(forBody: String, forHeadline: String, forSection: String, forPub_Time: String) {
        
        self.body = forBody;
        self.headline = forHeadline;
        self.section = forSection;
        self.pub_time = forPub_Time;
    }
}