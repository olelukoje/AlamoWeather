//
//  NetworkService.swift
//  alamoWeather
//
//  Created by Admin on 15/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import Alamofire
import AlamofireImage

class NetworkService {
    
    func loadAllDataForCity(id: String, completion: @escaping ([Dictionary<String, AnyObject>]) -> ()) {
        let weather_url = "/currentconditions/v1/\(id)?apikey=\(ApiKeys.api_key)&language=ru&details=true"
        let fullUrl = ApiKeys.main_url + weather_url
        request(fullUrl).responseJSON { response in
            if let request = response.request {
                print(request)
            }
            let result = response.result
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                completion(dict)
            }
        }
    }
    
    func loadWeatherImage(imageId: String, completion: @escaping (Image) -> ()) {
        let iconUrl = "https://openweathermap.org/img/w/\(imageId).png"
        request(iconUrl).responseImage { response in
            if let icon = response.result.value {
                completion(icon)
            }
        }
    }
    
    func loadAutocompleteCityNames(string: String, completion: @escaping ([Dictionary<String, AnyObject>]) -> ()) {
        let stringWithEncodedCharacters = string.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? string
        let urlWithString = ApiKeys.main_url + ApiKeys.cities_autocomplete_url + stringWithEncodedCharacters
        request(urlWithString).responseJSON { response in
            if let request = response.request {
                print(request)
            }
            let result = response.result
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                completion(dict)
            }
        }
    }
}
