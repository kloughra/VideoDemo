//
//  ViewController.swift
//  MediaPlayerDemo
//
//  Created by Katie Loughran on 3/14/16.
//  Copyright © 2016 Katie Loughran. All rights reserved.
//


import UIKit
import MediaPlayer
import AVKit

class StreamViewController: UIViewController {
    
    let player = AVPlayer(URL: NSURL(string: "http://nasatv-lh.akamaihd.net/i/NASA_101@319270/master.m3u8")!)
    let playerViewController = AVPlayerViewController()
    
    
    //Let's play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib

    }
    
    override func viewDidAppear(animated: Bool) {
        self.playerViewController.player = player
        self.presentViewController(self.playerViewController, animated: true) {
            self.playerViewController.player!.play()
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

