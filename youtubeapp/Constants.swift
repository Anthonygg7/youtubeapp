//
//  Constants.swift
//  youtubeapp
//
//  Created by Anthony  Garcia on 8/26/20.
//  Copyright © 2020 Anthony  Garcia. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = "UUC_2rswH-WYMID1aKu8oNww"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
