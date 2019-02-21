//
//  MusicService.swift
//  PromiseKitPractices
//
//  Created by Gökhan Gültekin on 2019-02-21.
//  Copyright © 2019 Gokhan. All rights reserved.
//

import Foundation
import PromiseKit

protocol MusicServiceProtocol {
    func fetchTracks() -> Promise<MusicListResponse>
}

final class MusicService: MusicServiceProtocol {
    
    public func fetchTracks() -> Promise<MusicListResponse> {
        
        return Promise { result in
        
            let url = URL(string: "hps://itunes.apple.com/search?term=jack+johnson")
            
            HTTPClient.get(from: url!, params: nil) { (response) in
                
                switch response.result {
                case .success(let data):
                    do {
                        let response = try JSONDecoder().decode(MusicListResponse.self, from: data)
                        result.fulfill(response)
                        
                    } catch {
                        result.reject(error)
                    }
                case .failure(let error):
                    result.reject(error)
                }
            }
        }
    }
}
