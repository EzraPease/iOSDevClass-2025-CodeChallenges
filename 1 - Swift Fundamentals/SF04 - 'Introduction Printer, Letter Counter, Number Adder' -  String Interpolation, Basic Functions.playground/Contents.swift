//  🏔️ MTECH Code Challenge SF04: "Introduction Printer, Letter Counter, Number Adder"
//  Concept: Practice using string interpolation and basic functions

//  Instructions:
    //  Under each step below, write the required code.

import Foundation

//  1) Change the values below to your own name and age.
let name = "Ezra"
let age = 22

//  2) Print a string introducing the user using the "name" and "age" variables. Use string interpolation
print("Hello, my name is \(name) and I am \(age) years old")

//  3) Create a function that takes in a word as a String. The function will return the number of letters in the string as an Int.
func letterCount(word: String) -> Int {
    return word.count
}

//  4) Create a function that takes in two Ints. The function will return the two Ints added together.
func numberAdder(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

//  ⌺ Black Diamond Challenge:
    //  Create a function that prints the results of each step all at once.
func allInOne(word: String, num1: Int, num2: Int) {
    print
}
