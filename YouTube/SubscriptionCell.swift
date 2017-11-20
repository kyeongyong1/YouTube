//
//  SubscriptionCell.swift
//  YouTube
//
//  Created by Lee on 2017. 11. 20..
//  Copyright © 2017년 LEE. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    
    
    
    override func fetchVideos() {
       
        APIService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
        
    }
    
}
