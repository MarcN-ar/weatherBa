//
//  WebServices.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 27/10/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import Foundation

class WebServices: NSObject {
    
    static func fetchForecast(){
        
        let urlWeather = "http://api.openweathermap.org/data/2.5/forecast/daily?q=buenos%20aires&mode=&units=metric&APPID=3d7fafd6fbae7ba96a7b3fa31bd0ce6b"
        
        guard let urlGet = URL(string: urlWeather) else { return }
        
        let request = URLRequest(url: urlGet)
        
        let task = URLSession.shared.dataTask(with: request) {(data,response,error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data) as! NSDictionary
                print(json)
            } catch let error{
                
                print(error)
                
            }
            
        }
        task.resume()
    }
    
    
}
