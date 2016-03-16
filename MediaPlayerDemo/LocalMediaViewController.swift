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
import MobileCoreServices



class LocalMediaViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    @IBAction func play(sender: UIButton) {
        startMediaBrowserFromViewController(self, usingDelegate: self)
    }
    
    @IBAction func doneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //let imagePicker = UIImagePickerController()
    //Let's play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
         //startMediaBrowserFromViewController(self, usingDelegate: self)
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        /*self.presentViewController(imagePicker, animated: true,
            completion: nil)*/
    }
    
    func startMediaBrowserFromViewController(viewController: UIViewController, usingDelegate delegate: protocol<UINavigationControllerDelegate, UIImagePickerControllerDelegate>) -> Bool {
        // 1
        if UIImagePickerController.isSourceTypeAvailable(.SavedPhotosAlbum) == false {
            return false
        }
        
        // 2
        let mediaUI = UIImagePickerController()
        mediaUI.sourceType = .SavedPhotosAlbum
        mediaUI.mediaTypes = [kUTTypeMovie as NSString as String]
        mediaUI.allowsEditing = true
        mediaUI.delegate = delegate
        
        // 3
        presentViewController(mediaUI, animated: true, completion: nil)
        return true
    }
    
    
}


extension LocalMediaViewController{

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // 1
        let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        
        // 2
        dismissViewControllerAnimated(true) {
            // 3
            if mediaType == kUTTypeMovie {
                let player = AVPlayer(URL:info[UIImagePickerControllerMediaURL] as! NSURL)
                let playerViewController = AVPlayerViewController()
                playerViewController.player = player
                self.presentViewController(playerViewController, animated: true) {
                    playerViewController.player!.play()
                }
                //let moviePlayer = MPMoviePlayerViewController(contentURL: info[UIImagePickerControllerMediaURL] as! NSURL)
                //self.presentMoviePlayerViewControllerAnimated(moviePlayer)
            }
        }
    }
}


