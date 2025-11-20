//  🏔️ MTECH Code Challenge ND05: "Name Swap"
//  Concept: Practice manipulating the contents of strings algorithmically

//  Instructions:
    //  Write a function that takes a String as input and returns another String.
    //  The input string will be a first and last name. Return a string with the names swapped, last name first, first name last.

//  Example:
    //  Input: "john McClane"
    //  Output: "McClane john"

//  Notes:
    //  You can assume the input will always be a single pair of names, first and last.

//  ⌺ Black Diamond Challenge:
    //  Write another function that accepts a full name as input (first, middle, last) and returns a string in the format, "lastName, firstName middleInitial." Include the comma, abbreviate the middle initial to one letter and add a period.

import Foundation

enum Errors: Error {
    case notFirstMiddleLast
    case noMiddleInitial
    case notFirstLast
}


func nameSwap(fullName name: String) throws -> String {
    var nameArray = name.components(separatedBy: " ")
    guard nameArray.count == 2 else { throw Errors.notFirstLast }
   return "\(nameArray[1]) \(nameArray[0])"
}



print(try nameSwap(fullName: "Ezra Pease"))

do {
    try print(nameSwap(fullName: "Billy Bob Joe"))
} catch {
    print(error)
}


print("\n")
// BLACK DIAMOND
func blackDiamondNameSwap(firstMiddleLast name: String) throws -> String {
    var nameArray = name.components(separatedBy: " ")
    guard nameArray.count == 3 else { throw Errors.notFirstMiddleLast }
    
    let firstName = nameArray[0]
    guard let middleInitial = nameArray[1].first else { throw Errors.noMiddleInitial }
    let lastName = nameArray[2]
    
    return "\(lastName), \(firstName) \(middleInitial)."
}


print(try blackDiamondNameSwap(firstMiddleLast: "Ezra Michael Pease"))
do {
    try print(blackDiamondNameSwap(firstMiddleLast: "Ezra Pease"))
} catch {
    print(error)
}
