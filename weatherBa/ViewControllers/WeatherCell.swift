//
//  WeatherCell.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 10/11/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    static let identifier = "WeatherCell"

    @IBOutlet weak var weekDayLabel: UILabel!
    
    
    @IBOutlet weak var tempStatusLabel: UILabel!
    
    
    @IBOutlet weak var minMaxLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

}
