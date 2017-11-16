//
//  APIService.swift
//  YouTube
//
//  Created by Lee on 2017. 11. 15..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

class APIService: NSObject {
    
    static let sharedInstance = APIService()
    

    func fetchVideos(completion: @escaping ([Video]) -> ()) {        let url = URL(string: "https://s3-us-west-2.amazonaws.com/youtubeassets/home.json")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error != nil {
                print(error)
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
                
                var videos = [Video]()
                
                for dictionary in json as! [[String : AnyObject]] {
                    let video = Video()
                    video.title = dictionary["title"] as? String
                    video.thumbnailImageName = dictionary["thumbnail_image_name"] as? String
                    
                    let channelDictionary = dictionary["channel"] as! [String : AnyObject]
                    
                    let channel = Channel()
                    channel.name = channelDictionary["name"] as? String
                    channel.profileImageName = channelDictionary["profile_image_name"] as? String
                    
                    video.channel = channel
                    
                    videos.append(video)
                    
                }
                
                DispatchQueue.main.async {
                    completion(videos)
                }
                
            } catch let jsonError {
                print(jsonError)
            }
        }
        task.resume()
    }
    
    
}
