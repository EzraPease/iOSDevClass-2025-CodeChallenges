//  🏔️ MTECH Code Challenge TP02: "Compare Arrays"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
// Write a function that takes in two arrays of Strings.
//  This function should keep track of which elements in either array do not also appear in the other array.
//  Return a new array of those unique elements

//  Examples:
//  Input:
//  array1: ["Monday", "Tuesday", "Wednesday"], array2: ["Wednesday", "Friday", "Saturday"]
//  Output:
//  ["Monday", "Tuesday", "Friday", "Saturday"]

//  ⌺ Black Diamond Challenge:
//  In another function, return only the items that occur in both arrays.
//  In another function, use sets to accomplish the same goal.

import Foundation


func compareSeparateArrayValues(_ array1: [String], to array2: [String]) -> [String] {
    
    var uniqueValues: [String] = []
    
    for value1 in array1 {
        if !array2.contains(value1) {
            uniqueValues.append(value1)
        }
    }
    for value2 in array2 {
        if !array1.contains(value2) {
            uniqueValues.append(value2)
        }
    }
    guard uniqueValues.count > 0 else {
        print("No Unique Values")
        return array1
    }
    return uniqueValues
}

func compareDuplicateArrayValues(_ array1: [String], to array2: [String]) -> [String] {
    
    var notUniqueValues: [String] = []
    
    for value1 in array1 {
        if array2.contains(value1) {
            notUniqueValues.append(value1)
        }
    }
    guard notUniqueValues.count > 0 else {
        print("No Matching Values")
        return array1
    }
    return notUniqueValues
}

//func setBlackDiamond(_ set1: Set<String>, to set2: Set<String>) -> Set<String> {
//    var result: Set<String> = []
//    
//    for set1 in set1 {
//        result.append(set1)
//    }
//    return result
//}

print(compareSeparateArrayValues(["Ezra", "Michael", "Food", "Apple"], to: ["Michael", "Apple", "John"]))
print(compareDuplicateArrayValues(["Ezra", "Michael", "Food", "Apple"], to: ["Michael", "Apple", "John"]))

//let setA: Set = ["Ezra", "Bob", "Tomato", "Giant", "Snow"]
//let setB: Set = ["Tomato", "Snow", "Bob"]
    //print(setBlackDiamond(setA, to: setB))
