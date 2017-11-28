//
//  JSONService.swift
//  alamoWeather
//
//  Created by Admin on 17/11/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import SwiftyJSON

class ParsingService {
   
//    func findCitiesWithMatch(text: String, completion: ([City]) -> ()) {
//        var citiesWithMatch = [City]()
//        for city in allCities {
//            if (city.name?.lowercased().hasPrefix(text.lowercased()))! {
//                citiesWithMatch.append(city)
//            }
//        }
//        completion(citiesWithMatch)
//    }
    
//    func parseJsonFromFile(completion: @escaping () -> ()) {
//        let concurrentQueue = DispatchQueue(label: "JsonParsing", attributes: .concurrent)
//        concurrentQueue.async {
//            do {
//                if let file = Bundle.main.url(forResource: "city.list", withExtension: "json") {
//                    let data = try Data(contentsOf: file)
//                    let json = JSON(data: data)
//                    if let items = json.array {
//                        for item in items {
//                            if let item = item.dictionary {
//                                let id = item["id"]?.int ?? 0
//                                let name = item["name"]?.stringValue ?? ""
//                                let country = item["country"]?.stringValue ?? ""
//                                let city = City(id: id, name: name, country: country)
//                                self.allCities.append(city)
////                                if self.allCities.count < 100 {
////                                    self.allCities.append(city)
////                                } else {
////                                    completion()
////                                    break
////                                }
//                            }
//                        }
//                        completion()
//                    }
//                } else {
//                    print("no file")
//                }
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
//    }
    
    func parseCities(data: [Dictionary<String, AnyObject>], completion: ([City]) -> ()) {
        var cities = [City]()
        for item in data {
            if let city = City(dictionary: item as NSDictionary) {
                cities.append(city)
            }
        }
        completion(cities)
    }
    
    func parseWeather(data: [Dictionary<String, AnyObject>], completion: (Weather) -> ()) {
        if let weather = Weather(dictionary: data[0] as NSDictionary) {
            completion(weather)
        }
    }
}







