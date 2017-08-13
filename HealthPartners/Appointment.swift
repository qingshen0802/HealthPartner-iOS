//
//  Appointment.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation

class Appointment: NSObject {
    
    let date : NSDate
    let location : String
    let name : String
    
    init(name:String, date:NSDate, location:String) {
        self.name = name
        self.location = location
        self.date = date;
    }
}