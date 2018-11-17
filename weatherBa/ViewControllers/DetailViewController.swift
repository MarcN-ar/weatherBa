//
//  DetailViewController.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 17/11/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var minLabel: UILabel!
    
    @IBOutlet weak var maxLabel: UILabel!
    
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    
    
    
    
    
    
    
    var weatherDetail: WeatherResponse.List?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }
    func setupView (){
        minLabel.text = String(format: "%.1f", weatherDetail?.temp.min ?? 0.0)
        maxLabel.text = String(format: "%.1f", weatherDetail?.temp.max ?? 0.0)
        dayLabel.text = String(format: "%.1f", weatherDetail?.temp.day ?? 0.0)
        mainLabel.text = weatherDetail?.weather.first?.main ?? ""
    }

  
}
