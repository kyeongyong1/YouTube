//
//  Video.swift
//  YouTube
//
//  Created by Lee on 2017. 10. 26..
//  Copyright © 2017년 LEE. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: NSNumber?
    var uploadDate: NSDate?
    
    var channel: Channel?
    
}

class Channel: NSObject {
    
    var name: String?
    var profileImageName: String?
    
}
