//
//  ActivityIndicatorViewController.swift
//  UICatalog
//
//  Created by Alvin Yu on 4/1/15.
//  Copyright (c) 2015 Alvin Yu. All rights reserved.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var startOrStopButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.color = UIColor.ayRedColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startOrStop(sender: AnyObject) {
        if self.activityIndicator.isAnimating() {
            activityIndicator.stopAnimating()
            startOrStopButton.setTitle("Start", forState: UIControlState.Normal)
            startOrStopButton.accessibilityLabel = "Start"
            startOrStopButton.accessibilityHint = "Starts the activity indicator."
        }
        else {
            activityIndicator.startAnimating()
            startOrStopButton.setTitle("Stop", forState: UIControlState.Normal)
            startOrStopButton.accessibilityLabel = "Stop"
            startOrStopButton.accessibilityHint = "Stops the activity indicator."
        }
    }
    
    @IBAction func selectedSegmentDidChange(sender: AnyObject) {
        NSLog("\(segmentedControl.selectedSegmentIndex)")
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            activityIndicator.color = UIColor.ayRedColor()
        case 1:
            activityIndicator.color = UIColor.ayGreenColor()
        case 2:
            activityIndicator.color = UIColor.ayBlueColor()
        default:
            activityIndicator.color = UIColor.grayColor()
        }
    }

}
