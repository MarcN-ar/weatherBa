//
//  File.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 03/11/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import Foundation

class WeatherResponse: Decodable {
    let list: [List]
    let city: City
    
    class List: Decodable {
        let temp: Temp
        let weather: [Weather]
        let pressure: Float?
        let humidity: Int?
        let rain: Float?
        let clouds: Int?
        
        class Temp: Decodable {
            let day: Double?
            let min: Double?
            let max: Double?
            
            func formatMinMax() -> String{
                
                let min = String(describing: Int(self.min ?? 0))
                let max = String(describing: Int(self.max ?? 0))
                
                return "\(min)/\(max)°C"
                
            }
        }
        
        class Weather: Decodable {
            let main: String?
            
        }
    }
    
    class City: Decodable {
        let name: String?
        let country: String?
    }
}




