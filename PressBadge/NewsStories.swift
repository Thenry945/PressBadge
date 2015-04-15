//
//  NewsStories.swift
//  PressBadge
//
//  Created by Travis Henrichs on 4/13/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import Foundation

class NewsStories: NSObject {
        
    var stories = Array<Story>();
    
    func load(fromURLString: String, completionHandler: (NewsStories, String?) -> Void) {
        stories = Array<Story>()
        if let url = NSURL(string: fromURLString) {
            let urlRequest = NSMutableURLRequest(URL: url)
            let session = NSURLSession.sharedSession()
            let task = session.dataTaskWithRequest(urlRequest, completionHandler: {
                (data, response, error) -> Void in
                if error != nil {
                    dispatch_async(dispatch_get_main_queue(), {
                        completionHandler(self, error.localizedDescription)
                    })
                } else {
                    self.parse(data, completionHandler: completionHandler)
                }
            })
            
            task.resume()
        } else {
            dispatch_async(dispatch_get_main_queue(), {
                completionHandler(self, "Invalid URL")
            })
        }
    }
    
    func parse(jsonData: NSData, completionHandler: (NewsStories, String?) -> Void) {
        var jsonError: NSError?
        var storyCounter = 0
        var idOfStory = 183763
        
        
        if let jsonResult = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: &jsonError) as? NSDictionary {
            if (jsonResult.count > 0){
                if let newsStoryData = jsonResult["\(storyCounter)"] as? NSArray {
                    for newsStory in  newsStoryData{
                        if let storyID = newsStory["\(idOfStory)"] as? NSDictionary{
                            if let bodyText = storyID["body"] as? String{
                                if let storySection = storyID["sect_hed"] as? NSString {
                                    if let storyHeadline = newsStory["headline"] as? NSString {
                                        if let pubTime = storyID["pub_time"] as? NSString {
                                            stories.append(Story(forBody: bodyText as String, forHeadline: storyHeadline as String, forSection: storySection as String, forPub_Time: pubTime as String))
                                        }
                                    }
                                }
                            }
                            
                        }
                    ++idOfStory
                    }
                    
                }
            ++storyCounter
            }
        
                        
                        
            
                    dispatch_async(dispatch_get_main_queue(), {
                        completionHandler(self, nil)
                    })
        } else {
            if let unwrappedError = jsonError {
                dispatch_async(dispatch_get_main_queue(), {
                    completionHandler(self, "\(unwrappedError)")
                })
            }
        }
        
        
    }

}
