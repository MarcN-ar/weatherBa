//
//  WebServices.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 27/10/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import Foundation
import Alamofire

class WebServices: NSObject {
    
    static func fetchForecast(completionHandler:@escaping (WeatherResponse) -> ()){
        
        let urlWeather = "http://api.openweathermap.org/data/2.5/forecast/daily?q=buenos%20aires&mode=&units=metric&APPID=3d7fafd6fbae7ba96a7b3fa31bd0ce6b"
        Alamofire.request(urlWeather, method: .get).responseJSON{
            response in
            do {
                guard let data = response.data else { return }
                
                let forecast = try JSONDecoder().decode(WeatherResponse.self, from: data)
                
                completionHandler(forecast)
            } catch let error{
                print(error)
            }
        }
       
    }
}
