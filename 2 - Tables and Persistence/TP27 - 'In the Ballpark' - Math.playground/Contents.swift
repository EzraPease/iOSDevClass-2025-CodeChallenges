//  🏔️ MTECH Code Challenge TP27: "In the Ballpark" ⚾️
//  Concept: Evaluate data with custom parameters

//  Instructions:
    //  Create a function called ballparkCompare that accepts 3 integers: a, b, and an optional margin. It should return an integer.
    //  The function should identify whether a is lower than, close to, or higher than b.
    //  We will consider "a" in the ballpark of "b" if the distance between a and b is less than the margin value.
        //  When a is close to b, return 0.
        //  When a is less than b, return -1.
        //  When a is greater than b, return 1.

//  Notes:
    //  If margin is not given or is less than 0, treat it as zero.

//  Examples:
    //  Input: (a: 103, b: 880, margin: 300)
    //  Output: -1

    //  Input: (a: 39, b: 10, margin: 50)
    //  Output: 0

//  ⌺ Black Diamond Challenge:
    //  Enhance the ballparkCompare function to accept two additional optional parameter called "rounding" and "roundValue".
    //  The "rounding" parameter should be an enum with cases for "up", "down", and "nearest".
    //  If "rounding" is provided, the function should round the values of a and b before comparing them, according to the rounding rule specified
    //  Round the numbers to the nearest multiple of the roundValue (i.e., if roundValue is 30, then 77 would round to 90)
    //  Ensure that the function still considers the margin when comparing the rounded values.

import Foundation

enum Errors: Error {
    case defaultError(String)
}

func ballparkCompare(a: Int, b: Int, optionalMargin: Int?) throws -> Int {
    let margin = optionalMargin ?? 0
        if a - b < margin || b - a < margin { // A is within margin
            return 0
        } else if a < b { // a is less than b
            return -1
        } else if a > b { // a is greater than b
            return 1
        } else {
            throw Errors.defaultError("To be honest Idk what you put to get this error")
        }
}

do {
    try print(ballparkCompare(a: 5, b: 10, optionalMargin: 5))
} catch {
    print(error)
}
do {
    try print(ballparkCompare(a: 1, b: 5, optionalMargin: nil))
} catch {
    print(error)
}
do {
    try print(ballparkCompare(a: 4241, b: 1556, optionalMargin: 8))
} catch {
    print(error)
}



// BLACK DAIMOND - Incomplete
enum roundingParameters {
    case up
    case down
    case nearest
}


func ballparkCompareBlackDiamond(a: Int, b: Int, optionalMargin: Int?, rounding: roundingParameters?, roundValue: Int?) throws -> Int {
    let margin = optionalMargin ?? 0
        if a - b < margin || b - a < margin { // A is within margin
            return 0
        } else if a < b { // a is less than b
            return -1
        } else if a > b { // a is greater than b
            return 1
        } else {
            throw Errors.defaultError("To be honest Idk what you put to get this error")
        }
}
