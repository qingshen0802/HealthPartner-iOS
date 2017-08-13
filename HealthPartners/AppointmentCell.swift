//
//  appointmentcell.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation
import UIKit

class AppointmentCell: UITableViewCell {
    
    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var appointment_name: UILabel!
    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(appointment:Appointment) {
        let date = appointment.date
        let components = getTime(date)
        let month = String(format: "%2d", components.month)
        let day = String(format: "%2d", components.day)
        let hour = String(format: "%2d", components.hour)
        let minutes = String(format: "%2d", components.minute)
        let time = hour + ":" + minutes
        self.month.text = month
        self.day.text = day
        self.time.text = time
        self.appointment_name.text = appointment.name
        self.location.text = appointment.location
    }
    
    func getTime(date:NSDate) -> NSDateComponents {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day, .Month, .Hour, .Minute], fromDate: date)
        return components
    }
}