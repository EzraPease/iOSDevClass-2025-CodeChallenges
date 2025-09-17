//  🏔️ MTECH Code Challenge SF16: "Find Non-Consecutive Elements"
//  Concept: Practice using subscripts to find a spcific value in an array; sort through complex logic to solve a problem

//  Instructions:
    //  Create a function that accepts an array and returns an optional Integer.
    //  Your task is to find the first element of an array that is not consecutive.
    //  By "not consecutive," we mean not exactly 1 larger than the previous element of the array.
    //  If the whole array is consecutive, then return nil.

//  Restrictions:
    //  The array will always have at least 2 elements and all elements will be numbers.
    //  The numbers will also all be unique and in ascending order.
    //  The numbers could be positive or negative and the first non-consecutive could be either too!

//  Examples:
    //  Input: [1,2,3,4,6,7,8]
        //  1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.
    //  Output: 6

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, when a non-consecutive number is found, end the previous array and start a new one. Return an array of arrays of Integers where all the arrays of Integers now only have consecutive numbers.
        //  Input: [1,2,3,5,6,7,9,10,11]
        //  Output: [[1,2,3], [5,6,7], [9,10,11]]

import Foundation


func findUnconsecutiveInt(in checkArray: [Int]) -> Int? {
    var storedValue: Int = checkArray[0]
    
    for checkArray in checkArray[1...] {
        if checkArray - 1 == storedValue {
            storedValue = checkArray
        } else if checkArray - 1 != storedValue {
            return checkArray
        }
    }
    return nil
}

let testArray1: [Int] = [1, 2, 3, 4, 6, 7, 8, 9, 10] //Should return 6
let testArray2: [Int] = [-5, -4, -3, -1] //Should return -1
let testArray3: [Int] = [1, 2, 3, 4, 5] //Should return nil


print(findUnconsecutiveInt(in: testArray1))
print(findUnconsecutiveInt(in: testArray2))
print(findUnconsecutiveInt(in: testArray3))
