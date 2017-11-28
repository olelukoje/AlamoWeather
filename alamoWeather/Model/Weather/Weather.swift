/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Weather {
	public var localObservationDateTime : String?
	public var epochTime : Int?
	public var weatherText : String?
	public var weatherIcon : Int?
	public var isDayTime : Bool?
	public var temperature : Temperature?
	public var realFeelTemperature : RealFeelTemperature?
	public var realFeelTemperatureShade : RealFeelTemperatureShade?
	public var relativeHumidity : Int?
	public var dewPoint : DewPoint?
	public var wind : Wind?
	public var windGust : WindGust?
	public var uVIndex : Int?
	public var uVIndexText : String?
	public var visibility : Visibility?
	public var obstructionsToVisibility : String?
	public var cloudCover : Int?
	public var ceiling : Ceiling?
	public var pressure : Pressure?
	public var pressureTendency : PressureTendency?
	public var past24HourTemperatureDeparture : Past24HourTemperatureDeparture?
	public var apparentTemperature : ApparentTemperature?
	public var windChillTemperature : WindChillTemperature?
	public var wetBulbTemperature : WetBulbTemperature?
	public var precip1hr : Precip1hr?
	public var precipitationSummary : PrecipitationSummary?
	public var temperatureSummary : TemperatureSummary?
	public var mobileLink : String?
	public var link : String?
    public var cityName : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Json4Swift_Base Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Weather]
    {
        var models:[Weather] = []
        for item in array
        {
            models.append(Weather(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Json4Swift_Base Instance.
*/
    init() {
        
    }
    
	required public init?(dictionary: NSDictionary) {

		localObservationDateTime = dictionary["LocalObservationDateTime"] as? String
		epochTime = dictionary["EpochTime"] as? Int
		weatherText = dictionary["WeatherText"] as? String
		weatherIcon = dictionary["WeatherIcon"] as? Int
		isDayTime = dictionary["IsDayTime"] as? Bool
		if (dictionary["Temperature"] != nil) { temperature = Temperature(dictionary: dictionary["Temperature"] as! NSDictionary) }
		if (dictionary["RealFeelTemperature"] != nil) { realFeelTemperature = RealFeelTemperature(dictionary: dictionary["RealFeelTemperature"] as! NSDictionary) }
		if (dictionary["RealFeelTemperatureShade"] != nil) { realFeelTemperatureShade = RealFeelTemperatureShade(dictionary: dictionary["RealFeelTemperatureShade"] as! NSDictionary) }
		relativeHumidity = dictionary["RelativeHumidity"] as? Int
		if (dictionary["DewPoint"] != nil) { dewPoint = DewPoint(dictionary: dictionary["DewPoint"] as! NSDictionary) }
		if (dictionary["Wind"] != nil) { wind = Wind(dictionary: dictionary["Wind"] as! NSDictionary) }
		if (dictionary["WindGust"] != nil) { windGust = WindGust(dictionary: dictionary["WindGust"] as! NSDictionary) }
		uVIndex = dictionary["UVIndex"] as? Int
		uVIndexText = dictionary["UVIndexText"] as? String
		if (dictionary["Visibility"] != nil) { visibility = Visibility(dictionary: dictionary["Visibility"] as! NSDictionary) }
		obstructionsToVisibility = dictionary["ObstructionsToVisibility"] as? String
		cloudCover = dictionary["CloudCover"] as? Int
		if (dictionary["Ceiling"] != nil) { ceiling = Ceiling(dictionary: dictionary["Ceiling"] as! NSDictionary) }
		if (dictionary["Pressure"] != nil) { pressure = Pressure(dictionary: dictionary["Pressure"] as! NSDictionary) }
		if (dictionary["PressureTendency"] != nil) { pressureTendency = PressureTendency(dictionary: dictionary["PressureTendency"] as! NSDictionary) }
		if (dictionary["Past24HourTemperatureDeparture"] != nil) { past24HourTemperatureDeparture = Past24HourTemperatureDeparture(dictionary: dictionary["Past24HourTemperatureDeparture"] as! NSDictionary) }
		if (dictionary["ApparentTemperature"] != nil) { apparentTemperature = ApparentTemperature(dictionary: dictionary["ApparentTemperature"] as! NSDictionary) }
		if (dictionary["WindChillTemperature"] != nil) { windChillTemperature = WindChillTemperature(dictionary: dictionary["WindChillTemperature"] as! NSDictionary) }
		if (dictionary["WetBulbTemperature"] != nil) { wetBulbTemperature = WetBulbTemperature(dictionary: dictionary["WetBulbTemperature"] as! NSDictionary) }
		if (dictionary["Precip1hr"] != nil) { precip1hr = Precip1hr(dictionary: dictionary["Precip1hr"] as! NSDictionary) }
		if (dictionary["PrecipitationSummary"] != nil) { precipitationSummary = PrecipitationSummary(dictionary: dictionary["PrecipitationSummary"] as! NSDictionary) }
		if (dictionary["TemperatureSummary"] != nil) { temperatureSummary = TemperatureSummary(dictionary: dictionary["TemperatureSummary"] as! NSDictionary) }
		mobileLink = dictionary["MobileLink"] as? String
		link = dictionary["Link"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.localObservationDateTime, forKey: "LocalObservationDateTime")
		dictionary.setValue(self.epochTime, forKey: "EpochTime")
		dictionary.setValue(self.weatherText, forKey: "WeatherText")
		dictionary.setValue(self.weatherIcon, forKey: "WeatherIcon")
		dictionary.setValue(self.isDayTime, forKey: "IsDayTime")
		dictionary.setValue(self.temperature?.dictionaryRepresentation(), forKey: "Temperature")
		dictionary.setValue(self.realFeelTemperature?.dictionaryRepresentation(), forKey: "RealFeelTemperature")
		dictionary.setValue(self.realFeelTemperatureShade?.dictionaryRepresentation(), forKey: "RealFeelTemperatureShade")
		dictionary.setValue(self.relativeHumidity, forKey: "RelativeHumidity")
		dictionary.setValue(self.dewPoint?.dictionaryRepresentation(), forKey: "DewPoint")
		dictionary.setValue(self.wind?.dictionaryRepresentation(), forKey: "Wind")
		dictionary.setValue(self.windGust?.dictionaryRepresentation(), forKey: "WindGust")
		dictionary.setValue(self.uVIndex, forKey: "UVIndex")
		dictionary.setValue(self.uVIndexText, forKey: "UVIndexText")
		dictionary.setValue(self.visibility?.dictionaryRepresentation(), forKey: "Visibility")
		dictionary.setValue(self.obstructionsToVisibility, forKey: "ObstructionsToVisibility")
		dictionary.setValue(self.cloudCover, forKey: "CloudCover")
		dictionary.setValue(self.ceiling?.dictionaryRepresentation(), forKey: "Ceiling")
		dictionary.setValue(self.pressure?.dictionaryRepresentation(), forKey: "Pressure")
		dictionary.setValue(self.pressureTendency?.dictionaryRepresentation(), forKey: "PressureTendency")
		dictionary.setValue(self.past24HourTemperatureDeparture?.dictionaryRepresentation(), forKey: "Past24HourTemperatureDeparture")
		dictionary.setValue(self.apparentTemperature?.dictionaryRepresentation(), forKey: "ApparentTemperature")
		dictionary.setValue(self.windChillTemperature?.dictionaryRepresentation(), forKey: "WindChillTemperature")
		dictionary.setValue(self.wetBulbTemperature?.dictionaryRepresentation(), forKey: "WetBulbTemperature")
		dictionary.setValue(self.precip1hr?.dictionaryRepresentation(), forKey: "Precip1hr")
		dictionary.setValue(self.precipitationSummary?.dictionaryRepresentation(), forKey: "PrecipitationSummary")
		dictionary.setValue(self.temperatureSummary?.dictionaryRepresentation(), forKey: "TemperatureSummary")
		dictionary.setValue(self.mobileLink, forKey: "MobileLink")
		dictionary.setValue(self.link, forKey: "Link")

		return dictionary
	}

}
