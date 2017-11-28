//
//  WeatherViewController.swift
//  alamoWeather
//
//  Created by Admin on 15/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

protocol ClickListener {
    func onSearchRowClick(id: String, cityName: String)
}

class SearchViewController: UITableViewController, UISearchBarDelegate {

    @IBOutlet weak var citySearchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    let parsingService = ParsingService()
    let networkService = NetworkService()
    var cities = [City]()
    var clickListener: ClickListener? = nil
    
    var indicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        citySearchBar.delegate = self
    }
    

    func searchBar(_ searchBar: UISearchBar, textDidChange text: String) {
        if !text.isEmpty {
            networkService.loadAutocompleteCityNames(string: text) { data in
                self.parsingService.parseCities(data: data) { cities in
                    self.cities = cities
                    self.tableView.reloadData()
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SearchCell = tableView.dequeueReusableCell(withIdentifier: "searchCell") as! SearchCell
        if let country = cities[indexPath.row].country?.localizedName {
            cell.idLabel.text = country
        }
        cell.nameLabel.text = cities[indexPath.row].localizedName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let id = cities[indexPath.row].key, let name = cities[indexPath.row].localizedName {
            performSegueToReturnBack()
            clickListener?.onSearchRowClick(id: id, cityName: name)
        }
    }
}

extension SearchViewController {
    func performSegueToReturnBack()  {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
}













