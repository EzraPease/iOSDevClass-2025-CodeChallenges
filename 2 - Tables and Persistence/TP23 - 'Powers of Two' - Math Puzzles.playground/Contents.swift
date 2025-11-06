//  🏔️ MTECH Code Challenge TP23: "Powers of Two"
//  Concept: Practice translating math into Swift code

//  Instructions:
    //  Create a function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).

//  Examples:
    //  Input: 2
    //  Math: 2^0, 2^1, 2^2
    //  Output: [1, 2, 4]

    //  Input: 5
    //  Math: 2^0, 2^1, 2^2, 2^3, 2^4, 2^5
    //  Output: [1, 2, 4, 8, 16, 32]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return all powers of N with the exponent ranging from 0 to n (inclusive).
    //  Input: 4, Output: [1, 4, 16, 64, 256]

import Foundation


func powerOfTwo(input: Int) -> [Int] {
    var results: [Int] = []
    
    for exponent in 0...input {
        let value = pow(2, Double(exponent))
        results.append(Int(value))
    }
    print(results)
    return results
}


powerOfTwo(input: 10)


// BLACK DIAMOND I guess?
func toThePower(input: Int) -> [Int] {
    var results: [Int] = []
    
    for exponent in 0...input {
        let value = pow(Double(input), Double(exponent))
        results.append(Int(value))
    }
    print(results)
    return results
}

toThePower(input: 10)

