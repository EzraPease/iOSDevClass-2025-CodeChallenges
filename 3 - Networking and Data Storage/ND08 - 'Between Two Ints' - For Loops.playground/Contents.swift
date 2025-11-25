//  🏔️ MTECH Code Challenge ND08: "Between Two Ints" 2️⃣↔️🔟
//  Concept: Practice using for loops to generate a dataset with custom parameters

//  Instructions:
    //  Create a function that takes two Integers, a and b, as input, and returns an array of Ints.
    //  The function should return an array of all integers from a to b, inclusive.

//  Notes:
    //  If a is greater than b, list all integers from b to a.

//  Examples:
    //  Input: 2, 10
    //  Output: [2, 3, 4, 5, 6, 7, 8, 9, 10]

//  ⌺ Black Diamond Challenge:
    //  Add a third parameter, c. Only return integers in the array that are divisible by c.
    //  Input: 2, 10, 3
    //  Output: [3, 6, 9]

import Foundation




func betweenTwoInts(from inputA: Int, to inputB: Int) -> [Int] {
    let sortedInputs = [inputA, inputB].sorted(by: <)
    var results: [Int] = []
    for intRange in sortedInputs[0]...sortedInputs[1] {
        results.append(intRange)
    }
    print(results)
    return results
}

betweenTwoInts(from: 1, to: 10)
print("-----------------")


// BLACK DIAMOND
func betweenTwoInts(from inputA: Int, to inputB: Int, divisor: Int) -> [Int] {
    let sortedInputs = [inputA, inputB].sorted(by: <)
    var results: [Int] = []
    for intRange in sortedInputs[0]...sortedInputs[1] {
        if intRange % divisor == 0 {
            results.append(intRange)
        }
    }
    print(results)
    return results
}

betweenTwoInts(from: 1, to: 10, divisor: 3)
betweenTwoInts(from: 1, to: 100, divisor: 10)
