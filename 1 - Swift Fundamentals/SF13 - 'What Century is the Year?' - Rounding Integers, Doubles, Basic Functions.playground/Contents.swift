//  🏔️ MTECH Code Challenge SF24: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
    //  Create a function that takes an integer representing a year as input, and outputs the century it is in.

//  Notes:
    //  Remember, the first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

//  Examples:
    //  Input: 1752, Output: 18
    //  Input: 1900, Output: 19
    //  Input: 1601, Output: 17
    //  Input: 2000, Output: 20

//  ⌺ Black Diamond Challenge:
    //  Output the century as an ordinal number in a String. That means 21 becomes 21st, 4 becomes 4th, etc.

import Foundation

func centuryFromYear(year: Int) {
    let century = (year / 100) + 1
    let lastDigit = century % 10
    
    switch lastDigit {
    case 1:
        print("\(century)st Century")
    case 2:
        print("\(century)nd Century")
    case 3:
        print("\(century)rd Century")
    case 0, 4...9:
        print("\(century)th Century")
    default:
        print("What year did you put in?????")
    }

}

centuryFromYear(year: 20000)



