//
//  NewsStory.swift
//  PressBadge
//
//  Created by Travis Henrichs on 4/29/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//

import Foundation
class NewsStories: NSObject{
    
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
        
        
        if let jsonResult = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: &jsonError) as? NSDictionary {
            if (jsonResult.count > 0)
            {
                if let status = jsonResult["status"] as? String {
                    if (status == "OK"){
                        if let jsonResponse: AnyObject = jsonResult["response"]{
                            if let newsStoryData = jsonResponse["docs"] as? NSArray {
                                for newsStory in  newsStoryData{
                                    if let storyURL = newsStory["web_url"] as? NSString {
                                        if let storySection = newsStory["section_name"] as? NSString {
                                            if let storyMain = newsStory["headline"] as? NSDictionary {
                                                if let storyHeadline = storyMain["main"] as? NSString {
                                                    stories.append(Story(forURL: storyURL as String, forHeadline: storyHeadline as String, forSection: storySection as String))
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        
                        
                    }
                    dispatch_async(dispatch_get_main_queue(), {
                        completionHandler(self, nil)
                    })
                }
            }
        } else {
            if let unwrappedError = jsonError {
                dispatch_async(dispatch_get_main_queue(), {
                    completionHandler(self, "\(unwrappedError)")
                })
            }
        }
        
        
    }
}