//
//  ViewController.swift
//  Navigation_bar
//
//  Created by Tina Loh on 6/6/15.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
   
    var timer = NSTimer()
    var count = 0
    
    func updateTime() {
        count++
        display.text = String(count)
        
    }
    
    
    @IBAction func stopButton(sender: AnyObject) {
        //stop and reset the timer to 0
        timer.invalidate()
        count = 0
        display.text = String(count)
    }
    
    
    @IBAction func pauseButton(sender: AnyObject) {
        //pause timer
        timer.invalidate()
    }
    
    
    @IBAction func playButton(sender: AnyObject) {
        //start the timer
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

