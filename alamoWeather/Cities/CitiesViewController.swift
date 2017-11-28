//
//  CitiesViewController.swift
//  alamoWeather
//
//  Created by Admin on 20/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class CitiesViewController: UITableViewController {

    var weatherList = [Weather]()
    let networkService = NetworkService()
    let parsingService = ParsingService()
    
    @IBOutlet var citiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") as! CityCell
        
        cell.cityNameLabel.text = weatherList[indexPath.row].cityName
        if let temp = weatherList[indexPath.row].temperature?.metric?.value,
            let tempUnit = weatherList[indexPath.row].temperature?.metric?.unit {
            cell.temperatureLabel.text = String(format: "%.0f", temp) + " " + tempUnit
        }
//        if let icon = weatherList[indexPath.row].iconImage {
//            cell.cloudsImageView.image = icon
//        }
        return cell
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.fromCitiesListToSearch {
            let controller = segue.destination as! SearchViewController
            controller.clickListener = self
        } else if segue.identifier == Segues.fromCitiesListToDetail {
            let controller = segue.destination as! CityDetailViewController
            if let path = self.citiesTableView.indexPathForSelectedRow {
                controller.weather = weatherList[path.row]
            }
        }
    }
}

extension CitiesViewController: ClickListener {
    func onSearchRowClick(id: String, cityName: String) {
        networkService.loadAllDataForCity(id: id) { data in
            self.parsingService.parseWeather(data: data) { weather in
                weather.cityName = cityName
                self.weatherList.append(weather)
                self.tableView.reloadData()
//                self.loadIcon(city: weather)
            }
        }
    }
    
//    func loadIcon(city: City) {
//        if let weather = city.weather {
//            if let iconId = weather[0].icon {
//                self.networkService.loadWeatherImage(imageId: iconId) { image in
//                    city.iconImage = image
//                    self.tableView.reloadData()
//                }
//            }
//        }
//    }
}






