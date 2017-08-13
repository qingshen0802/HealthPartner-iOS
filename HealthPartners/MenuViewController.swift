//
//  MenuViewController.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arvins = [Menu]()
    var cares = [Menu]()
    var more = [Menu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arvins.append(Menu(title:"Home", image: "Home-96"))
        arvins.append(Menu(title: "Favorites", image: "Like-100"))
        cares.append(Menu(title: "Appointments", image: "Today-menu"))
        cares.append(Menu(title: "Test results", image: "Test Partial Passed-marker"))
        cares.append(Menu(title: "Immunization", image: "Syringe-100"))
        cares.append(Menu(title: "Phamarcy", image: "Bandage-96"))
        cares.append(Menu(title: "Find care", image: "Marker-menu"))
        cares.append(Menu(title: "Quick Pay", image: "Bank Card Back Side-100"))
        cares.append(Menu(title: "Quick Refill", image: "Bandage-96"))
        more.append(Menu(title: "Contact us", image: "phone-menu"))
        more.append(Menu(title: "Terms & Conditions", image: "Document-96"))
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arvins.count
        } else if section == 1  {
            return cares.count
        } else  {
            return more.count
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "WELCOME ARVIN"
        } else if section == 1  {
            return "MY CARE"
        } else {
            return "MORE"
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("menucell", forIndexPath: indexPath) as! MenuCell
        
        if indexPath.section == 0 {
            cell.setupCell(self.arvins[indexPath.row])
        } else if indexPath.section == 1  {
            cell.setupCell(self.cares[indexPath.row])
        } else {
            cell.setupCell(self.more[indexPath.row])
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                break
            default:
                break
            }
        }
    }
    
}