//  🏔️ MTECH Code Challenge SF18: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
//  Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//  Examples:
//  Input: [15,5,6,7,2,3,45,12], 3
//  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
//  Create another function. This time, return the first and last n elements of the array. If the first and last n elements overlap (i.e., 3 first and 3 last in a 5 element array), return the whole array.

import Foundation

var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

func accessArray(access: [Int], till: Int) -> [Int] {
    var newArray: [Int] = []
    
            for newValue in access[0...till] {
                newArray.append(newValue)
            }
            return newArray
}

func accessSectionOfArray(access: [Int], from: Int, through: Int) -> [Int] {
    var newArray: [Int] = []
        
        if from == through || from > through {
            return access
        } else {
            for newValue in access[from...through] {
                newArray.append(newValue)
            }
            return newArray
        }
}

print(accessArray(access: myArray, till: 5))
print(accessSectionOfArray(access: myArray, from: 2, through: 8))
print(accessSectionOfArray(access: myArray, from: 0, through: 0))
