//
//  ViewController.swift
//  CustomProgressBar
//
//  Created by Deepak Kadarivel on 29/01/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: ProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 52.0/255.0, green: 170.0/255.0, blue: 220.0/255.0, alpha: 1.0)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    @IBAction func hideProgress(sender: AnyObject) {
        progressView.hideProgressView()
    }

    @IBAction func animateProgress(sender: AnyObject) {
        progressView.animateProgressView()
    }
}

