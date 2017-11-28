/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TemperatureSummary {
	public var past6HourRange : Past6HourRange?
	public var past12HourRange : Past12HourRange?
	public var past24HourRange : Past24HourRange?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let temperatureSummary_list = TemperatureSummary.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of TemperatureSummary Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [TemperatureSummary]
    {
        var models:[TemperatureSummary] = []
        for item in array
        {
            models.append(TemperatureSummary(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let temperatureSummary = TemperatureSummary(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: TemperatureSummary Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["Past6HourRange"] != nil) { past6HourRange = Past6HourRange(dictionary: dictionary["Past6HourRange"] as! NSDictionary) }
		if (dictionary["Past12HourRange"] != nil) { past12HourRange = Past12HourRange(dictionary: dictionary["Past12HourRange"] as! NSDictionary) }
		if (dictionary["Past24HourRange"] != nil) { past24HourRange = Past24HourRange(dictionary: dictionary["Past24HourRange"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.past6HourRange?.dictionaryRepresentation(), forKey: "Past6HourRange")
		dictionary.setValue(self.past12HourRange?.dictionaryRepresentation(), forKey: "Past12HourRange")
		dictionary.setValue(self.past24HourRange?.dictionaryRepresentation(), forKey: "Past24HourRange")

		return dictionary
	}

}