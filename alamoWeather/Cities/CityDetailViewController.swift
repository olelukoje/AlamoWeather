//
//  CityDetailViewController.swift
//  alamoWeather
//
//  Created by Minaeva Olga on 21/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class CityDetailViewController: UIViewController {

    var weather = Weather()
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityNameLabel.text = weather.cityName
        
        if let temp = weather.temperature?.metric?.value, let tempUnit = weather.temperature?.metric?.unit {
            temperatureLabel.text = String(format: "%.0f", temp) + " " + tempUnit
        }
        
        if let pressure = weather.pressure?.metric?.value, let pressureUnit = weather.pressure?.metric?.unit {
            pressureLabel.text = String(format: "%.0f", pressure) + " " + pressureUnit
        }
        
        if let humidity = weather.relativeHumidity {
            humidityLabel.text = String(humidity) + "%"
        }
        
        if let windSpeed = weather.wind?.speed?.metric?.value, let windSpeedUnit = weather.wind?.speed?.metric?.unit {
            windSpeedLabel.text = String(format: "%.0f", windSpeed) + " " + windSpeedUnit
        }
        
//        if let icon = weather.iconImage {
//            weatherIconImageView.image = icon
//        }
    }
}
