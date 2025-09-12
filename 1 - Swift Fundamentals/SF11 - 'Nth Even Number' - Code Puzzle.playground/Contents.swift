//  🏔️ MTECH Code Challenge SF25: "Nth Even Number"
//  Concept: Use abstract thinking to solve an unintuitive coding puzzle

//  Instructions:
    //  Given input n, return the nth even number.

//  Notes:
    //  The input will never be 0.

//  Examples:
    // Input: 1, Output: 0 (the first even number is 0)
    // Input: 3, Output: 4 (the 3rd even number is 4 (0, 2, 4))
    // Input: 100, Output: 198
    // Input: 1298734, Output: 2597466

//  ⌺ Black Diamond Challenge:
    //  Add a boolean parameter called "even". If true, return the nth even number; if false, return the nth odd number.

import Foundation

var myDefault = 0
var input = 10
let evenOutput: Int
let oddOutput: Int
//var even: Bool (Didn't need it to do the same thing)


var evenNumbers: [Int] = []
var oddNumbers: [Int] = []


while myDefault <= input {
    if myDefault.isMultiple(of: 2) {
        evenNumbers.append(myDefault)
    }
    else if !myDefault.isMultiple(of: 2) {
        oddNumbers.append(myDefault)
    }
    myDefault += 1
}
evenOutput = evenNumbers.last ?? 0
oddOutput = oddNumbers.last ?? 0

print("Here are the even numbers: \(evenNumbers)")
print("Here are the odd numbers: \(oddNumbers)")

print(evenOutput)
print(oddOutput)









