/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class PrecipitationSummary {
	public var precipitation : Precipitation?
	public var pastHour : PastHour?
	public var past3Hours : Past3Hours?
	public var past6Hours : Past6Hours?
	public var past9Hours : Past9Hours?
	public var past12Hours : Past12Hours?
	public var past18Hours : Past18Hours?
	public var past24Hours : Past24Hours?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let precipitationSummary_list = PrecipitationSummary.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of PrecipitationSummary Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [PrecipitationSummary]
    {
        var models:[PrecipitationSummary] = []
        for item in array
        {
            models.append(PrecipitationSummary(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let precipitationSummary = PrecipitationSummary(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: PrecipitationSummary Instance.
*/
	required public init?(dictionary: NSDictionary) {

		if (dictionary["Precipitation"] != nil) { precipitation = Precipitation(dictionary: dictionary["Precipitation"] as! NSDictionary) }
		if (dictionary["PastHour"] != nil) { pastHour = PastHour(dictionary: dictionary["PastHour"] as! NSDictionary) }
		if (dictionary["Past3Hours"] != nil) { past3Hours = Past3Hours(dictionary: dictionary["Past3Hours"] as! NSDictionary) }
		if (dictionary["Past6Hours"] != nil) { past6Hours = Past6Hours(dictionary: dictionary["Past6Hours"] as! NSDictionary) }
		if (dictionary["Past9Hours"] != nil) { past9Hours = Past9Hours(dictionary: dictionary["Past9Hours"] as! NSDictionary) }
		if (dictionary["Past12Hours"] != nil) { past12Hours = Past12Hours(dictionary: dictionary["Past12Hours"] as! NSDictionary) }
		if (dictionary["Past18Hours"] != nil) { past18Hours = Past18Hours(dictionary: dictionary["Past18Hours"] as! NSDictionary) }
		if (dictionary["Past24Hours"] != nil) { past24Hours = Past24Hours(dictionary: dictionary["Past24Hours"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.precipitation?.dictionaryRepresentation(), forKey: "Precipitation")
		dictionary.setValue(self.pastHour?.dictionaryRepresentation(), forKey: "PastHour")
		dictionary.setValue(self.past3Hours?.dictionaryRepresentation(), forKey: "Past3Hours")
		dictionary.setValue(self.past6Hours?.dictionaryRepresentation(), forKey: "Past6Hours")
		dictionary.setValue(self.past9Hours?.dictionaryRepresentation(), forKey: "Past9Hours")
		dictionary.setValue(self.past12Hours?.dictionaryRepresentation(), forKey: "Past12Hours")
		dictionary.setValue(self.past18Hours?.dictionaryRepresentation(), forKey: "Past18Hours")
		dictionary.setValue(self.past24Hours?.dictionaryRepresentation(), forKey: "Past24Hours")

		return dictionary
	}

}