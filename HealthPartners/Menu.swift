//
//  Menu.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation

class Menu: NSObject {
    let image : String
    let title : String
    
    init(title: String, image: String) {
        self.image = image
        self.title = title
    }
}