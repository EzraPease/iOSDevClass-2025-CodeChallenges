//  🏔️ MTECH Code Challenge TP03: "Validating Phone Numbers"
//  Concept: Practice validating inputs to make sure they're what you're expecting; practice formatting text (you'll have to do this all the time!); practice using throwing functions to produce errors when something goes wrong

//  Instructions:
// The API you're using needs a specific format for phone numbers: (xxx)-xxx-xxxx.
// Write a throwing function that takes in a string and returns a formatted phone string, or throws if the string that was passed in is not a valid phone number.

//  Examples:
//  Input: "5558675309"
//  Output: "(555)-867-5309"

//  Input: "phone number"
//  Output: no output produced, error thrown and caught instead

//  ⌺ Black Diamond Challenge:
//  Add a parameter to your function that allows you to select a country from an enum of supported phone number formats. Make it so your app successfully validates and formats phone numbers for three other countries.
//  You can find phone number formats here: 🔗https://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers

import Foundation

enum PhoneError: Error {
    case wrongLength(expected: Int, found: Int)
}

enum Country: String {
    case us = "US"
    case ca = "CA"
    case uk = "UK"
    case fr = "FR"
}


func formatUSPhone(Country: Country, _ input: String) -> String? {
    let digits = input.filter(\.isNumber)
    var countryNumber: String
    
    switch Country {
    case .us, .ca: 
        countryNumber = "1"
    case .uk: 
        countryNumber = "44"
    case .fr: 
        countryNumber = "33"
    }
    
    guard digits.count == 10 else {
        print("ERROR - \(PhoneError.wrongLength(expected: 10, found: digits.count))")
        return nil
    }
    let area = digits.prefix(3)
    let middle = digits.dropFirst(3).prefix(3)
    let last = digits.suffix(4)
    
    let result = "+\(countryNumber) (\(area)) \(middle) - \(last)"
    print(result)
    return result
}


formatUSPhone(Country: .us, "8011111111")
formatUSPhone(Country: .fr, "1274591489")
formatUSPhone(Country: .fr, "2.074599")


