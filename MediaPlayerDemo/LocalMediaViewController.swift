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
        
        //Make sure Photo Album source is available
        if UIImagePickerController.isSourceTypeAvailable(.SavedPhotosAlbum) == false {
            return false
        }
        
        //Create an image picker controller, set the source type to the Saved Photo Album
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .SavedPhotosAlbum
        imagePicker.mediaTypes = [kUTTypeMovie as String]
        imagePicker.allowsEditing = true
        imagePicker.delegate = delegate
        
        //Launch the Controller
        presentViewController(imagePicker, animated: true, completion: nil)
        return true
    }
    
    
}


extension LocalMediaViewController{

    //Add this optional function! in order to change the action after the video is chosen
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        //let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        
        dismissViewControllerAnimated(true, completion: nil)
        
        //Here we just dismiss the view, but we can choose what we do with the video on completion! If we would like to we
        //could play it again, or we could send the video somewhere else to be used
        
        //Commented out is an example of us playing it again
        
        /*dismissViewControllerAnimated(true) {
        
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
        }*/
    }
}


