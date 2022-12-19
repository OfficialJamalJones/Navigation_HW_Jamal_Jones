//
//  TableViewController.swift
//  Navigation_HW_Jamal_Jones
//
//  Created by Consultant on 12/19/22.
//

import UIKit

class TableViewController: UITableViewController {
    

    let cities = [
    
    DataModel(name: "New York", temp: "38˚", humidity: "47%", image: #imageLiteral(resourceName: "NewYork.jpg")),
    DataModel(name: "Los Angeles", temp: "66˚", humidity: "33%", image: #imageLiteral(resourceName: "LosAngeles.jpg")),
    DataModel(name: "Chicago", temp: "26˚", humidity: "64%", image: #imageLiteral(resourceName: "Chicago.jpg")),
    DataModel(name: "Houston", temp: "50˚", humidity: "94%", image: #imageLiteral(resourceName: "Houston.jpg")),
    DataModel(name: "Phoenix", temp: "63˚", humidity: "34%", image: #imageLiteral(resourceName: "Phoenix.jpg")),
    DataModel(name: "Philadelphia", temp: "36˚", humidity: "49%", image: #imageLiteral(resourceName: "Philadelphia.jpg")),
    DataModel(name: "San Antonio", temp: "53˚", humidity: "88%", image: #imageLiteral(resourceName: "SanAntonio.jpg")),
    DataModel(name: "San Diego", temp: "63˚", humidity: "49%", image: #imageLiteral(resourceName: "SanDiego.jpg")),
    DataModel(name: "Dallas", temp: "47˚", humidity: "75%", image: #imageLiteral(resourceName: "Dallas.jpg")),
    DataModel(name: "San Jose", temp: "55˚", humidity: "60%", image: #imageLiteral(resourceName: "SanJose.jpg"))
    
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.cityLabel.text = cities[indexPath.row].name

        return cell
    }
    
   
    
    // MARK: - Navigation
    
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedRow = indexPath.row
        let weatherVC = storyboard?.instantiateViewController(withIdentifier: "WeatherViewController") as! WeatherViewController
        weatherVC.city = cities[selectedRow]
        navigationController?.pushViewController(weatherVC, animated: true)
        
    }

   

}
