//
//  MainViewController.swift
//  MediaPlayerDemo
//
//  Created by Katie Loughran on 3/15/16.
//  Copyright © 2016 Katie Loughran. All rights reserved.
//

import UIKit
import MediaPlayer
import AVKit

class MainViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "liveVideo" {
            let destination = segue.destinationViewController as! LiveVideoViewController
            destination.player = AVPlayer(URL: NSURL(string: "http://nasatv-lh.akamaihd.net/i/NASA_101@319270/master.m3u8")!)
        }
        if segue.identifier == "localVideo" {
            //let destination = segue.destinationViewController as! MovieViewController
           // destination.player = AVPlayer(URL: NSURL(string: "http://nasatv-lh.akamaihd.net/i/NASA_101@319270/master.m3u8")!)
        }
        
    }


}
