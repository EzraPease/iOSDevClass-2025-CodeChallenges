//  🏔️ MTECH Code Challenge SF28: "Find a Value in an Array"
//  Concept: Practice looking up data in an array; create functions which accept different types of parameters (aka Function Overloading); (Optional) Learn about Generics from the instructor

//  Instructions:
//  You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
//  The type of a and x can be String OR Int.
//  Return true if the array contains the value, false if not.
//  Take note of the wording of this problem. I should be able to pass in either an array of strings or an array of Ints and it will work the same.

//  Notes:
//  If you're stuck, look up function overloading.

//  Examples:
//  Input: array: [3, 4, 5, 8, 9], x: 3
//  Output: true

//  Input: array: ["hi", "hello", "howdy"], x: "sup"
//  Output: false

//  ⌺ Black Diamond Challenge:
//  Create another function. Accomplish the same goal using generics instead of function overloading.

import Foundation


let myIntArray: [Int] = [1, 2, 3, 4, 5]
let myIntValue = 2
let myStringArray: [String] = ["Hello", "Goodbye", "Greetings"]
let myStringValue = "Adios"

func checkArrayContains(array: [Int], value: Int) -> Bool {
    array.contains(value)
}

func checkArrayContains(array: [String], value: String) -> Bool {
    array.contains(value)
}

func checkGenericArray<T: Equatable>(array: [T], value: T) -> Bool {
    array.contains(value)
}

print(checkArrayContains(array: myIntArray, value: myIntValue))
print(checkArrayContains(array: myStringArray, value: myStringValue))

print(checkGenericArray(array: myIntArray, value: myIntValue))
print(checkGenericArray(array: myStringArray, value: myStringValue))

