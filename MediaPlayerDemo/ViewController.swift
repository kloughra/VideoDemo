//
//  ViewController.swift
//  MediaPlayerDemo
//
//  Created by Katie Loughran on 3/14/16.
//  Copyright © 2016 Katie Loughran. All rights reserved.
//

/*import UIKit
import MediaPlayer
import MobileCoreServices
import AVKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var moviePlayerController: AVPlayer?
    var urlVideo:NSURL?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        urlVideo = NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(URL: urlVideo!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.presentViewController(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
        print("HERE")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}*/



import UIKit
import MediaPlayer

class ViewController: UIViewController {
    
    
    var streamPlayer : MPMoviePlayerController =  MPMoviePlayerController(contentURL: NSURL(string:"http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8"))
    
    //Let's play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        streamPlayer.view.frame = self.view.bounds
        self.view.addSubview(streamPlayer.view)
        
        streamPlayer.fullscreen = true
        // Play the movie!
        streamPlayer.play()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

