//
//  DataHandler.swift
//  PressBadge
//
//  Created by Summer Storie on 5/7/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import UIKit

class DataHandler: NSObject {

    class func getCategories() -> [Category] {
        
//        //so something for it to not exist, nskeytoarchiver
        
       // if let LibraryOptions
        let libraryURLDirecories:NSArray = NSFileManager.defaultManager().URLsForDirectory(.LibraryDirectory, inDomains: .UserDomainMask)
        let libraryURLOptional = libraryURLDirecories.lastObject as? NSURL
        if let libraryURL = libraryURLOptional {
            var libraryPath = libraryURL.path?.stringByAppendingPathComponent("categories.swift")
            if libraryPath != nil {
        
                let fileExists = NSFileManager.defaultManager().fileExistsAtPath(libraryPath!)
                if !fileExists {
                    let UserProgress = DataHandler.loadCategoriesFromBundle()
                    DataHandler.fillData(UserProgress)
                }
                let stuff = NSKeyedUnarchiver.unarchiveObjectWithFile(libraryPath!) as! [Category]
                return stuff
            }
        }
//
//        let episodes = NSKeyedUnarchiver.unarchiveObjectWithFile("categories.swift"!) as! [Episode] //file directory needs to be where categories is ideally categories.data or whatever
//        return episodes //if this works this is returned instead
//        
//        return [Category]() //that's in case everything fails
        return [Category]()
    }
    
    class func fillData(data:NSData){
        
        var categories = [Category]()
        
        categories.append(Category(aTitle: "Science", aLevel: 1, aProgress: 0))
        categories.append(Category(aTitle: "Science", aLevel: 2, aProgress: 0))
        
        let mainBundle = NSBundle.mainBundle()
        let libraryURLDirectories:NSArray = NSFileManager.defaultManager().URLsForDirectory(.LibraryDirectory, inDomains: .UserDomainMask)
        let libraryURLOptional = libraryURLDirectories.lastObject as? NSURL
        if let libraryURL = libraryURLOptional {
            var libraryPath = libraryURL.path?.stringByAppendingPathComponent("data")
            NSKeyedArchiver.archiveRootObject(categories, toFile: "data")
        }
        
//        [Category(title : "Science", level : 1, progress : 0)(title : "Science", level : 2, progress : 0)(title : "Science", level : 3, progress : 0)(title : "Science", level : 4, progress : 0)(title : "Science", level : 5, progress : 0)(title : "Sports", level : 1, progress : 0)(title : "Sports", level : 2, progress : 0)(title : "Sports", level : 3, progress : 0)(title : "Sports", level : 4, progress : 0)(title : "Sports", level : 5, progress : 0)(title : "Local", level : 1, progress : 0)(title : "Local", level : 2, progress : 0)(title : "Local", level : 3, progress : 0)(title : "Local", level : 4, progress : 0)(title : "Local", level : 5, progress : 0)(title : "Politics", level : 1, progress : 0)(title : "Politics", level : 2, progress : 0)(title : "Politics", level : 3, progress : 0)(title : "Politics", level : 4, progress : 0)(title : "Politics", level : 5, progress : 0)(title : "Life", level : 1, progress : 0)(title : "Life", level : 2, progress : 0)(title : "Life", level : 3, progress : 0)(title : "Life", level : 4, progress : 0)(title : "Life", level : 5, progress : 0)]
        
    }
    
    class func loadCategoriesFromBundle() -> NSData {
        var libraryPath = libraryURL.path?.stringByAppendingPathComponent("data")
        var error:NSErrorPointer?
        let pathForDataFromBundle = libraryPath
        let dataFromBundle = NSFileManager.defaultManager().contentsAtPath(pathForDataFromBundle!)
        return dataFromBundle!
    }

    //method to write data to disk first
    
}


