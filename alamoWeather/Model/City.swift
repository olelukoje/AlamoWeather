/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class City {
	public var version : Int?
	public var key : String?
	public var type : String?
	public var rank : Int?
	public var localizedName : String?
	public var country : Country?
	public var administrativeArea : AdministrativeArea?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Json4Swift_Base Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [City]
    {
        var models:[City] = []
        for item in array
        {
            models.append(City(dictionary: item as! NSDictionary)!)
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

		version = dictionary["Version"] as? Int
		key = dictionary["Key"] as? String
		type = dictionary["Type"] as? String
		rank = dictionary["Rank"] as? Int
		localizedName = dictionary["LocalizedName"] as? String
		if (dictionary["Country"] != nil) { country = Country(dictionary: dictionary["Country"] as! NSDictionary) }
		if (dictionary["AdministrativeArea"] != nil) { administrativeArea = AdministrativeArea(dictionary: dictionary["AdministrativeArea"] as! NSDictionary) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.version, forKey: "Version")
		dictionary.setValue(self.key, forKey: "Key")
		dictionary.setValue(self.type, forKey: "Type")
		dictionary.setValue(self.rank, forKey: "Rank")
		dictionary.setValue(self.localizedName, forKey: "LocalizedName")
		dictionary.setValue(self.country?.dictionaryRepresentation(), forKey: "Country")
		dictionary.setValue(self.administrativeArea?.dictionaryRepresentation(), forKey: "AdministrativeArea")

		return dictionary
	}

}
