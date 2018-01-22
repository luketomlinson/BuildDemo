//
//  TodayViewController.swift
//  BuildDemoExtension
//
//  Created by Luke Tomlinson on 1/22/18.
//  Copyright © 2018 Luke Tomlinson. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
   
    @IBOutlet var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        #if RELEASE
        statusLabel.text = "This extension is for release."
        #else
        statusLabel.text = "This extension is for debug"
        #endif
    }
    
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
