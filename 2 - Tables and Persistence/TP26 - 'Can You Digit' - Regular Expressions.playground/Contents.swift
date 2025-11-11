//  🏔️ MTECH Code Challenge TP26: "Can You Digit"
//  Concept: Practice using regular expressions

//  Instructions:
    //  Create a function take that takes a string as input and returns a boolean.
    //  Your function should return true if the input string is a single digit, and false if it is anything else.
    //  You must use a regular expression to determine this. (Don't use Character's isNumber() method.)

//  Examples:
    //  Input: "7"
    //  Output: true

    //  Input: "838"
    //  Output: false

    //  Input: "hi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle the following cases:
    //  1. Leading or trailing spaces: "  7  " should return true.
    //  2. Single digit with a positive or negative sign: "+7" and "-7" should return true.
    //  3. A digit within a string: "abc7xyz" should return true.

import Foundation


enum Errors: Error {
    case notANumber(String)
    case emptyInput(String)
    case tooManyCharacters(String)
}


func isSingleDigit(input: String) throws -> Bool {
    guard !input.isEmpty else { throw Errors.emptyInput("INVALID INPUT - input is empty (Input - false)") } // Checks if the input is empty
    guard input.count == 1 else { throw Errors.tooManyCharacters("INVALID INPUT - Too many characters (Input - false)") } // Checks if the input is exactly 1
    
    if let intInput = Int(input) { // Outputs if the input string is the correct format and type
        print(true) // Prints opposite of false :3
        return true
    } else {
        throw Errors.notANumber("INVALID INPUT - Not a number (Input - false)") // The default error is input isn't a number
    }
}


do {
    try isSingleDigit(input: "1")
} catch {
    print(error)
}
do {
    try isSingleDigit(input: "hi")
} catch {
    print(error)
}
do {
    try isSingleDigit(input: "a")
} catch {
    print(error)
}
do {
    try isSingleDigit(input: "7")
} catch {
    print(error)
}



