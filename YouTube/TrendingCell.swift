//
//  TrendingCell.swift
//  YouTube
//
//  Created by Lee on 2017. 11. 20..
//  Copyright © 2017년 LEE. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    
    override func fetchVideos() {
        APIService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
    
    
}
