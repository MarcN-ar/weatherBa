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
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        WebServices.fetchForecast(completionHandler: {(result:WeatherResponse)in
       
            self.weatherObject = result
            
            DispatchQueue.main.sync(execute: {
                self.tableView.reloadData()
            })
        })
        
    }


}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return weatherObject?.list.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = weatherObject?.list[indexPath.row].weather.first?.main
        
        return cell
        
    }
}
