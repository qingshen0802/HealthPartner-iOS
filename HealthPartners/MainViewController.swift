//
//  MainViewController.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation
import UIKit
import SWRevealViewController

class MainViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var menuBarItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Dashboard"
        
        menuBarItem.target = self.revealViewController()
        menuBarItem.action = Selector("revealToggle:")
        
        addShadow(self.view1)
        addShadow(self.view2)
    }
    
    func addShadow(view:UIView)  {
        view.layer.shadowColor = UIColor.blackColor().CGColor
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 3
    }

}