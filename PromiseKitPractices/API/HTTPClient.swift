//
//  ServiceManager.swift
//  CurrencyConverter
//
//  Created by Gokhan Gultekin on 13.12.2018.
//  Copyright © 2018 Gokhan Gultekin. All rights reserved.
//

import Foundation
import Alamofire

protocol HTTPClientProtocol {
    static func get(from url: URL, params: [String:String]?, completion: @escaping (DataResponse<Data>) -> Void)
}

struct HTTPClient: HTTPClientProtocol {
    
    static func get(from url: URL, params: [String:String]?, completion: @escaping (DataResponse<Data>) -> Void) {
        
        request(url, method: .get, parameters: params, encoding: URLEncoding.default, headers: nil).responseData { (response) in
            completion(response)
        }
    }
}
