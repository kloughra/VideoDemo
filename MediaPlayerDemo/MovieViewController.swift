//
//  MovieViewController.swift
//  MediaPlayerDemo
//
//  Created by James on 3/15/16.
//  Copyright © 2016 Katie Loughran. All rights reserved. WAY TO FORGET JAMES AND THOM
//

import UIKit
import MediaPlayer
import MobileCoreServices
import AVKit
import AVFoundation

class MovieViewController: UIViewController {
    
    private var firstAppear = true
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if firstAppear {
            do {
                try playVideo()
                firstAppear = false
            } catch AppError.InvalidResource(let name, let type) {
                debugPrint("Could not find resource \(name).\(type)")
            } catch {
                debugPrint("Generic error")
            }
            
        }
    }
    
    private func playVideo() throws {
        guard let path = NSBundle.mainBundle().pathForResource("trailer_1080p", ofType:"mov") else {
            throw AppError.InvalidResource("video", "m4v")
        }
        let player = AVPlayer(URL: NSURL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.presentViewController(playerController, animated: true) {
            player.play()
        }
    }
}

enum AppError : ErrorType {
    case InvalidResource(String, String)
}