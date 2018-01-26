//
//  ViewController.swift
//  BuildDemo
//
//  Created by Luke Tomlinson on 1/16/18.
//  Copyright © 2018 Luke Tomlinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        #if FASTLANE
            let postfix = " from fastlane"
        #else
            let postfix = ""
        #endif
        
        #if RELEASE
            infoLabel.text = "This is a release build" + postfix
        #else
            infoLabel.text = "This is a debug build" + postfix
        #endif
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

