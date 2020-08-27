//
//  Video.swift
//  youtubeapp
//
//  Created by Anthony  Garcia on 8/26/20.
//  Copyright © 2020 Anthony  Garcia. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var videoId = ""
    var tittle = ""
    var description = ""
    var thumbnail =  ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case descritption
        case thumbnail = "url"
        case videoId
        
    }
        
    init (from decoder: Decoder) throws {
        
       let container = try decoder.container(keyedBy: CodingKeys.self)
      
        let snippetContainer = try container.nestedContainer(keyedBy:       CodingKeys.self, forKey: .snippet)
        
        //Parse title
        self.tittle = try snippetContainer.decode(String.self, forKey: .title)
        
        //Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .descritption)
        
        //Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //Parse thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //Parse video ID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
    }
}
