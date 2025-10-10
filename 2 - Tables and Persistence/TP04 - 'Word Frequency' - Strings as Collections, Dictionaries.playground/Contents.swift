//  🏔️ MTECH Code Challenge TP04: "Word Frequency"
//  Concept: Practice evaluating Strings.

//  Instructions:
    //  Write a function that tells how many times a given word occurs in a string.
    //  The function should take in a string and return a dictionary with the frequency of each word.

//  Notes:
    //  You may assume the string will not contain any punctuation, but different capitalizations of a word should count as the same word.

//  Examples:
    //  Input: "Beware the Jabberwock my son The jaws that bite The claws that catch"
    //  Output: ["son": 1, "jabberwock": 1, "my": 1, "beware": 1, "jaws": 1, "that": 2, "the": 3, "claws": 1, "catch": 1, "bite": 1]

//  ⌺ Black Diamond Challenge:
    //  Change your function to allow for punctuation in the input string without causing words to be counted incorrectly.
    //  Order your output dictionary by frequency.

import Foundation


func checkWordFrequency(in stringCheck: String) -> [String: Int] {
    var result: [String: Int] = [:]
    let upperCaseStringCheck = stringCheck
        .uppercased()
        .split(whereSeparator: \.isWhitespace)
        .map(String.init)
    
    for wordCheck in upperCaseStringCheck {
        result[wordCheck, default: 0] += 1
    }
    
    print(result)
    return result
}


let myString1 = "The apple ate the seed on the ground and became a mutated tree because of the seed"
checkWordFrequency(in: myString1)
