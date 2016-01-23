//
//  ViewController.swift
//  HippololamusTweets
//
//  Created by James Harrison on 1/1/16.
//  Copyright © 2016 James Harrison. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        if (SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter)) {
        let tweetVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        tweetVC.setInitialText("I just finished the first thing.")
        self.presentViewController(tweetVC, animated: true, completion: nil)
        }
        else  {
        NSLog("Can't send tweet")
        
        }
    }
}

