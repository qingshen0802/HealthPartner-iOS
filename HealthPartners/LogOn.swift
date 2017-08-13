//
//  LogOn.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation
import UIKit

class LogOn: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.hidden = false;
        self.navigationItem.title = "LOG ON"
    }
   
    @IBAction func goLogon(sender: AnyObject) {
        let rootViewController = self.storyboard?.instantiateViewControllerWithIdentifier("revealview")
        UIApplication.sharedApplication().keyWindow?.rootViewController = rootViewController
    }
}
