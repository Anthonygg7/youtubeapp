//
//  Response.swift
//  youtubeapp
//
//  Created by Anthony  Garcia on 8/26/20.
//  Copyright © 2020 Anthony  Garcia. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items:[Video]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
    }
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decodeIfPresent([Video].self, forKey: .items)
        
    }
    
}
