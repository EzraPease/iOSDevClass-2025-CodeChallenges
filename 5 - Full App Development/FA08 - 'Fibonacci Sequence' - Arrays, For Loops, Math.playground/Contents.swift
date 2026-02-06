//  🏔️ MTECH Code Challenge SF08: "Fibonacci Sequence" 🐚
//  Concept: Practice translating a math formula into Swift code; practice using index subscripting to dynamically access elements of an array

//  Instructions:
    //  Create a function that takes a number as an argument and returns n instances of the Fibonacci sequence as an array.
    //  Fibonacci numbers: F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.
    //  So the simple explanation is: The next element is the sum of the two previous elements.

//  Notes:
    //  If 0 is given, return an empty array.
    //  The input will never be a negative integer.

//  Examples:
    //  Input: fibSeq(4), Output: [0, 1, 1, 2]
    //  Input: fibSeq(7), Output: [0, 1, 1, 2, 3, 5, 8]
    //  Input: fibSeq(0), Output: []

//  ⌺ Black Diamond Challenge:
    //  Make another function that will return a specific slice of the Fibonacci sequence. The array will have n instances of the Fibonacci sequence starting from index i.
    //  Input: (fibSeq(n: 4, i: 7), Output: [8, 13, 21, 34]

import Foundation



// MARK: Entire Fibonacci Sequence
func fibiSequence(number: Int) -> [Int] {
    var result: [Int] = []
    guard number != 0 else { return result }
    
    // Default values for the first 2 indexs
    for index in 0...number - 1 {
        if index == 0 || index == 1 {
            result.append(index)
        } else {
            // Building the rest of the sequence array
            result.append((result[index - 1]) + (result[index - 2]))
        }
    }
    
    print("Full Sequence: \(result)")
    return result
}

fibiSequence(number: 4)
fibiSequence(number: 7)
fibiSequence(number: 0)


// MARK: BLACK DIAMOND - Fibonacci Sequence at a set point
print("\nBLACK DIAMOND")
func setRangeFibiSequence(sequenceAmount: Int, startPoint: Int) -> [Int] {
    var result: [Int] = []
    let sequenceEndRange = sequenceAmount - 1
    let presetResult = fibiSequence(number: startPoint + sequenceEndRange) // Sets the starting array
    
    // Appends Int's into result based on the provided range
    for index in startPoint...startPoint + sequenceEndRange {
        result.append(presetResult[index - 1])
    }
    
    print("Set Range Result: \(result)\n")
    return result
}

setRangeFibiSequence(sequenceAmount: 4, startPoint: 7)
setRangeFibiSequence(sequenceAmount: 5, startPoint: 13)
setRangeFibiSequence(sequenceAmount: 6, startPoint: 4)
