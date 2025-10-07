//  🏔️ MTECH Code Challenge TP01: "Reverse Alphabetical"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    //  Alphabetically reverse sort an array of strings.

//  Examples:
    //  Input: ["Bob", "Jill", "Sally"], Output: ["Sally", "Jill", "Bob"]
    //  Input: ["Vern", "Gidget", "Zeb"], Output: ["Zeb", "Vern", "Gidget"]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, sort every word's letters reverse alphabetically, then sort all words in the array. You do not need to retain the case of the characters.
    //  Input: ["Bob", "Jill", "Sally"]
    //  Output: ["llji", "obb", "yslla"]

import Foundation

func reverseAlphabetical(sort arrayInput: [String]) -> [String] {
    var variableArray = arrayInput
    var blackDiamondSortedArray: [String] = []
    
    for variableArray in variableArray {
        let sortedString = String(variableArray.lowercased().sorted(by: >))
        
        blackDiamondSortedArray.append(sortedString)
    }
    blackDiamondSortedArray.sort(by: >)
    return blackDiamondSortedArray
}

let myArray = ["Abc", "def", "ghi", "jkl"]
let mySecondArray = ["s;dflakj", "afiefnnsaf", "Ezra", "bob", "Max", "independant"]


print(reverseAlphabetical(sort: myArray))
print(reverseAlphabetical(sort: mySecondArray))
