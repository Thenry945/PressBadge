//
//  ArticleViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assited by Kenneth Michael

import UIKit

class ArticleViewController: UIViewController {
    

    @IBOutlet weak var storiesTableView: UITableView!
    
    var storyList: NewsStories = NewsStories();
    let urlString = "http://ec2-52-11-214-35.us-west-2.compute.amazonaws.com:5050/data?ids=183762,183803";
    var selectedStory: Story?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyList.load(urlString) {
            (stories, errorString) -> Void in
            if let unwrappedErrorString = errorString {
                println(unwrappedErrorString)
            } else {
                self.storiesTableView.reloadData()
            }
        }

    }



}
