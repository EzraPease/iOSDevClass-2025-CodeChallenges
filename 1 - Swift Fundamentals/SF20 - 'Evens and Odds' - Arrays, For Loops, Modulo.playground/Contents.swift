//  🏔️ MTECH Code Challenge SF11: "Evens and Odds"
//  Concept: Practice using for loops to iterate through an array; practice using the modulo operator to find evens and odds

//  Instructions:
//      1) Write a function that takes in an array of Int's
//          The function will not return anything
//      2) Loop through the array. If the number is even print "num: Even" If the number is odd print "num: Odd"
//      3) When printing, "num" should be replaced with the number

//  Examples:
//      Input:
//          [1,2,3]
//      Output:
//          "1: Odd"
//          "2: Even"
//          "3: Odd"

//  ⌺ Black Diamond Challenge:
//    Add another function. This time, take a minimum and maximum Int, then print every number in that range.
//      Input:
//          (min: 10, max: 13)
//      Output:
//          "10: Even"
//          "11: Odd"
//          "12: Even"
//          "13: Odd"

import Foundation

func evenOrOdd(collection: [Int]) {
    for evenOrOdd in collection {
        if evenOrOdd % 2 == 0 {
            print("\(evenOrOdd): Even")
        } else {
            print("\(evenOrOdd): Odd")
        }
    }
}

func rangedEvenOrOdd(min: Int, max: Int) {
    for rangedNumbers in min...max {
        if rangedNumbers % 2 == 0 {
            print("\(rangedNumbers): Even")
        } else {
            print("\(rangedNumbers): Odd")
        }
    }
}

var myArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

evenOrOdd(collection: myArray)
print("\n")
rangedEvenOrOdd(min: 20, max: 30)


