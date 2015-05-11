//
//  DataHandler.swift
//  PressBadge
//
//  Created by Summer Storie on 5/7/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import Foundation

class DataManager {
    var badges: [String:[String]]
    
    var BadgeList: [String] {
        var list: [String] = []
        for badgeName in badges.keys {
            list.append(badgeName)
        }
        
        list.sort(<)
        
        return list
    }
    
    init() {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        if let badgeInfo = userDefaults.valueForKey("badges") as? [String:[String]] {
            badges = badgeInfo
        } else {
            // add default data
            badges = [
                "Science 1": ["Science"],
                "Sports 1" : ["Sports"],
                "Science 2" : ["Science"],
                "Sports 2" : ["Sports"],
                "Science 3" : ["Science"],
                "Sports 3" : ["Sports"],
                "Science 4" : ["Science"],
                "Sports 4" : ["Sprots"],
                "Science 5" : ["Science"],
                "Sports 5" : ["Sports"]
            ]
        }
    }
    
    func saveData() {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setValue(badges, forKey: "badges")
    }
    

    
    struct Static {
        static var onceToken : dispatch_once_t = 0
        static var instance : DataManager? = nil
    }
    
    class var sharedInstance : DataManager {
        dispatch_once(&Static.onceToken) {
            Static.instance = DataManager()
        }
        return Static.instance!
    }
}