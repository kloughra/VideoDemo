//
//  MainViewController.swift
//  MediaPlayerDemo
//
//  Created by Katie Loughran on 3/15/16.
//  Copyright © 2016 Katie Loughran. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func liveButton(sender: UIButton) {
        performSegueWithIdentifier("liveVideo", sender: sender)
    }
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
            //could pass video link here.
            /*if let videoViewController = segue.destinationViewController as? StreamViewController {
                newStudentViewController.roster = roster
            }*/
        }
    }


}
