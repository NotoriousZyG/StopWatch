//
//  ViewController.swift
//  StopWatch
//
//  Created by Roman Parajuli on 7/3/15.
//  Copyright (c) 2015 Roman Parajuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    
    func updateTime(){
        count++
        time.text = "\(count)"
        
        
    }

    @IBOutlet weak var time: UILabel!
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = "\(0)"
        
    }
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        // when play button is pressed twice the speed of the timer is inctreased and the app misbehaves.
        // so when play button is pressed, change the same button to pause button, then play button cannot be pressed twice
        
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

