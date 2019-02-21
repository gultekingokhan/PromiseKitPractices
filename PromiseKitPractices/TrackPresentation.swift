//
//  TrackPresentation.swift
//  PromiseKitPractices
//
//  Created by Gökhan Gültekin on 2019-02-21.
//  Copyright © 2019 Gokhan. All rights reserved.
//

import Foundation

final class TrackPresentation: NSObject {
    
    let trackId: Int
    let trackName: String
    let artistName: String
    
    init(trackId: Int, trackName: String, artistName: String) {
        self.trackId = trackId
        self.trackName = trackName
        self.artistName = artistName
        super.init()
    }
}
