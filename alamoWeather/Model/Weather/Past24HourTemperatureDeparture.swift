/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Past24HourTemperatureDeparture {
	public var metric : Metric?
	public var imperial : Imperial?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let past24HourTemperatureDeparture_list = Past24HourTemperatureDeparture.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Past24HourTemperatureDeparture Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Past24HourTemperatureDeparture]
    {
        var models:[Past24HourTemperatureDeparture] = []
        for item in array
        {
            models.append(Past24HourTemperatureDeparture(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let past24HourTemperatureDeparture = Past24HourTemperatureDeparture(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Past24HourTemperatureDeparture Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["Metric"] != nil) { metric = Metric(dictionary: dictionary["Metric"] as! NSDictionary) }
		if (dictionary["Imperial"] != nil) { imperial = Imperial(dictionary: dictionary["Imperial"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.metric?.dictionaryRepresentation(), forKey: "Metric")
		dictionary.setValue(self.imperial?.dictionaryRepresentation(), forKey: "Imperial")

		return dictionary
	}

}