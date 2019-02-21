//
//  MusicListResponse.swift
//  JukeBox
//
//  Created by Gökhan Gültekin on 2019-02-19.
//  Copyright © 2019 Gökhan Gültekin. All rights reserved.
//

import Foundation

public struct MusicListResponse: Decodable {
    
    public enum RootCodingKeys: String, CodingKey {
        case results
    }

    public let results: [Track]

    init(results: [Track]) {
        self.results = results
    }

    public init(from decoder: Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        self.results = try rootContainer.decode([Track].self, forKey: .results)
    }
}
