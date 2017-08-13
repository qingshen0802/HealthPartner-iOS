//
//  MenuCell.swift
//  HealthPartners
//
//  Created by Alexey on 9/20/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import Foundation
import UIKit

class MenuCell: UITableViewCell {
    
    @IBOutlet weak var menu_ic: UIImageView!
    @IBOutlet weak var menu_title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(menu: Menu) {
        self.menu_ic.image = UIImage(named: menu.image)
        self.menu_title.text = menu.title
    }
}