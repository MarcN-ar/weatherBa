//
//  ViewController.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 20/10/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController  {
    @IBOutlet weak var tableView: UITableView!
    
    var weatherObject: WeatherResponse?
    var selectedWeather: WeatherResponse.List?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        WebServices.fetchForecast(completionHandler: {(result:WeatherResponse)in
       
            self.weatherObject = result
            self.tableView.reloadData()
        })
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Detail") {
            if let destination = segue.destination as? DetailViewController{
                destination.weatherDetail = selectedWeather
            }
        }
    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return weatherObject?.list.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: WeatherCell.identifier, for: indexPath) as! WeatherCell
        
        let dateOfTheWeek = Calendar.current.date(byAdding: .day, value: indexPath.row, to: Date()) ?? Date()
        
        let tempDay = weatherObject?.list[indexPath.row].temp.day ?? 0.0
        
        let tempDayFormatted = String(format: "%.1f", tempDay)
        
        let status = weatherObject?.list[indexPath.row].weather.first?.main ?? ""
                
        cell.minMaxLabel.text = weatherObject?.list[indexPath.row].temp.formatMinMax()
        
        cell.tempStatusLabel.text = "\(tempDayFormatted)°C \(status)"
        
        cell.weekDayLabel.text = DateHelpers.getFormat().string(from: dateOfTheWeek)
      
        return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if let weather = weatherObject {
            return "\(weather.city.name ?? ""), \(weather.city.country ?? "")"
        } else {
            return ""
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedWeather = weatherObject?.list [indexPath.row]
        performSegue(withIdentifier: "Detail", sender: navigationController)
    }
}


