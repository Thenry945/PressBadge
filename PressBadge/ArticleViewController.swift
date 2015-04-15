//
//  ArticleViewController.swift
//  PressBadge
//  Summer Storie on 4/9/15
//  Created by Travis Henrichs on 4/9/15.
//  Copyright (c) 2015 Travis Henrichs. All rights reserved.
//  Assited by Kenneth Michael

import UIKit

class ArticleViewController: UIViewController {
    
    var storyList: NewsStories = NewsStories();
    let urlString = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=Yellen&api-key=379f80bbdce5bde2ca5619951803bbea:16:71569476";
    var selectedStory: Story?

    override func viewDidLoad() {
        super.viewDidLoad()

    }



}
