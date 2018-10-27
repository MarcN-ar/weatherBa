//
//  Forecast.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 27/10/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import Foundation

class Forecast: NSObject{
    
    var temperature:Double = 0.0
    var minTemp:Double = 0.0
    var maxTemp:Double = 0.0
    var state:String = ""
    
    init(temperature:Double, minTemp:Double, maxTemp:Double, state:String) {
        self.temperature = temperature
        self.minTemp = minTemp
        self.maxTemp = maxTemp
        self.state = state
    }
    
}
