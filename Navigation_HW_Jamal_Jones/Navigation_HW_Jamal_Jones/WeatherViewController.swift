//
//  WeatherViewController.swift
//  Navigation_HW_Jamal_Jones
//
//  Created by Consultant on 12/19/22.
//

import UIKit

class WeatherViewController: UIViewController {
    
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var cityImage: UIImageView!
    
    @IBOutlet weak var tempatureLabel: UILabel!
    
    @IBOutlet weak var humidityLabel: UILabel!
    
    var city: DataModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.cityImage.image = city.image
        self.tempatureLabel.text = "Temperature: \(city.temp)"
        self.humidityLabel.text = "Humidity: \(city.humidity)"
        self.cityLabel.text = city.name
        
    }
    


}
