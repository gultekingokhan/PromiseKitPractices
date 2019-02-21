//
//  Track.swift
//  JukeBox
//
//  Created by Gökhan Gültekin on 2019-02-18.
//  Copyright © 2019 Gökhan Gültekin. All rights reserved.
//

import Foundation

public struct Track: Decodable {
    
    public enum CodingKeys: String, CodingKey {
        case trackId
        case trackName
        case artistName
    }
    
    public let trackId: Int
    public let trackName: String
    public let artistName: String
}
