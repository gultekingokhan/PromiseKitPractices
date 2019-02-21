//
//  ViewController.swift
//  PromiseKitPractices
//
//  Created by Gökhan Gültekin on 2019-02-21.
//  Copyright © 2019 Gokhan. All rights reserved.
//

import UIKit
import PromiseKit

class ViewController: UIViewController {
    
    var mockTracks: [TrackPresentation]?
    let service = MusicService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.fetchTracks().done { response in
            
            let presentations = response.results
            print("Second track: \(presentations[1].trackName)")
            
        }.catch { (error) in
            print("error: \(error.localizedDescription)")
        }
    }
}

class GError: Error {
    
    let description: String
    
    init(description: String) {
        self.description = description
    }
}
