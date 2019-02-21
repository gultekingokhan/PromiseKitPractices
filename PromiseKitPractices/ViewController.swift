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
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        // MARK: Option 1
        service.fetchTracks()
        .done { response in
            
            let tracks = response.results
            print("Second track: \(tracks[1].trackName)")
            
        }.catch { (error) in //handle error here
            print("error: \(error.localizedDescription)")
        }.finally {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
        
        // MARK: Option 2
        firstly {
            
            service.fetchTracks()
            
        }.done { response in

            let tracks = response.results
            print("Second track: \(tracks[1].trackName)")
            
        }.catch { error in //handle error here
            print("error: \(error.localizedDescription)")
        }.finally {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
}
