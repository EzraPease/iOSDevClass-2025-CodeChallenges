//  🏔️ MTECH Code Challenge TP21: "Will It Divide"
//  Concept: Practice translating simple math into Swift code

//  Instructions:
//  Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

//  Examples:
//  Input: n: 10, x: 2, y: 5
//  Logic: 10 is divisible by 2 and 5
//  Output: true

//  Input: n: 27, x: 9, y 2
//  Logic: 27 is not divisible by 2
//  Output: false

//  ⌺ Black Diamond Challenge:
//  Extend the function to accept an additional array parameter, 'divisors', which is an array of integers.
//  The function should return true if the number n is divisible by *all* numbers in the 'divisors' array, and false if it is not divisible by any one of them.

import Foundation



func checkDivisibility(mainNumber: Int, x: Int, y: Int) {
    var isDivisibleByX = false
    var isDivisibleByY = false
    
    if mainNumber % x == 0 {
        isDivisibleByX = true
    }
    if mainNumber % y == 0 {
        isDivisibleByY = true
    }
    
    print("\(mainNumber) is divisible by \(x): \(isDivisibleByX)\n\(mainNumber) is divisible by \(y): \(isDivisibleByY)")
}

checkDivisibility(mainNumber: 10, x: 2, y: 3)


// BLACK DIAMOND
func checkDivisibilityByArray(mainNumber: Int, divisors: [Int]) -> Bool {
    var trueDivisors: [Bool] = []
    
    for index in divisors {
        if mainNumber % index == 0 {
            trueDivisors.append(true)
        }
    }
    print(trueDivisors)
    if trueDivisors.count == divisors.count {
        return true
    }
    
    return false
}


print(checkDivisibilityByArray(mainNumber: 100, divisors: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(checkDivisibilityByArray(mainNumber: 100, divisors: [2, 10]))

