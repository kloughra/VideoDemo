//
//  LiveVideoViewController.swift
//  MediaPlayerDemo
//
//  Created by Katie Loughran on 3/15/16.
//  Copyright © 2016 Katie Loughran. All rights reserved.
//

import UIKit
import MediaPlayer
import AVKit


class LiveVideoViewController: AVPlayerViewController {
    //var videoPlayer:AVPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //self.player = player
        //self.playerViewController.view.frame = CGRectMake(0, 0, 100, 100)
        
        self.presentViewController(self, animated: true) {
            self.player!.play()
        }
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
