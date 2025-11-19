//  🏔️ MTECH Code Challenge ND04: "Binary to Decimal"
//  Concept: Practice moving between different representations of the same data

//  Instructions:
    //  Create a function that takes a String as input and returns an Int.
    //  The input string will be a binary number. Return it as a base 10 number.

    //  Helpful Link: 🔗https://www.cuemath.com/numbers/binary-to-decimal/

//  Examples:
    //  Input: 10010001
    //  Output: 145

//  ⌺ Black Diamond Challenge:
    //  Create another function that converts an Int to binary representation in a String.
    //  Add your functions as extensions of String and Int, respectively, so they can be called directly on any String or Int. You will need to also add input validation so you can be certain that a String is in binary format when the user tries to convert it; return nil if the input is invalid.

import Foundation


enum BinaryErrors: Error {
    case invalidInput
    case unableToConvertToDouble
}




func binaryToDecimal(binaryInput: String) throws -> Int {
    var result = 0
    if let doubleBinary = Double(binaryInput) {
        print(doubleBinary)
        
        for (index, doubleBinary) in binaryInput.enumerated() {
            print("Binary Number: \(doubleBinary)")
            print("Index: \(index)")
            guard doubleBinary == "1" || doubleBinary == "0" else {
                print("Binary Error: Input must be 1's and 0's \(BinaryErrors.invalidInput)")
                throw BinaryErrors.invalidInput }
            result = Int(pow(doubleBinary, index)
        }
    } else {
        throw BinaryErrors.unableToConvertToDouble
    }
        
}


try binaryToDecimal(binaryInput: "10010001")
