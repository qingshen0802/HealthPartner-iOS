//
//  AppointmentListController.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation
import UIKit

class AppointmentListController: UIViewController, UITableViewDelegate, UITableViewDataSource   {
    
    var datas = [Appointment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...5 {
            let date = NSDate()
            datas.append(Appointment(name: "Ganga S Reddy, MD", date: date, location: "Office Visit"))
        }
        
        self.navigationItem.title = "Appointment"
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("appointmencell", forIndexPath: indexPath) as! AppointmentCell
        
        cell.setupCell(self.datas[indexPath.row])
        return cell;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "PAST APPOINTMENTS 2016"
    }
}