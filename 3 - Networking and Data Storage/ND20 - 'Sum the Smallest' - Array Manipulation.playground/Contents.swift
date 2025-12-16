//  🏔️ MTECH Code Challenge ND20: "Sum the Smallest"
//  Concept: Practice sorting and manipulating arrays.

//  Instructions:
    //  Create a function take that takes an Array<Int> and returns an Int
    //  The output of your function is the sum of the two smallest positive numbers in the array.
    //  If the array has too few positive integers, return nil.

//  Examples:
    //  Input: [19, 5, 42, 2, 77, -5]
    //  Output: 7

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle an additional optional parameter, another array of Ints called 'exclude'.
    //  The function should return the sum of the two smallest positive numbers in the array that are not in the 'exclude' array.
    //  If there are too few positive integers left after excluding the specified numbers, return nil.

import Foundation




func sumOfSmallest(in input: Array<Int>) -> Int? {
    var variableInput = input
    guard variableInput.count >= 2 else { return nil }
    var currentLowest = variableInput[0]
    var result: [Int] = []
    
    while result.count < 2 {
        for number in variableInput {
            if number < currentLowest {
                currentLowest = number
            }
        }
        result.append(currentLowest)
        if let index = variableInput.firstIndex(of: currentLowest) {
            variableInput.remove(at: index)
        }
        currentLowest = variableInput[0]
        
    }
    return result[0] + result[1]
}




print(sumOfSmallest(in: [1, 2, 3, 4, 5, -2, -19, 0]))
print(sumOfSmallest(in: [5, 4, 3, 2, 0]))
