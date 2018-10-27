//
//  ViewController.swift
//  weatherBa
//
//  Created by Marcelo Nardone on 20/10/2018.
//  Copyright © 2018 Marcelo Nardone. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController  {
    
    let weatherArray = ["Buenos Aires","Londres","Tokio","Madrid","Shanghai","Berlin","Bangkok"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }


}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return weatherArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = weatherArray[indexPath.row]
        
        return cell
        
    }
}
