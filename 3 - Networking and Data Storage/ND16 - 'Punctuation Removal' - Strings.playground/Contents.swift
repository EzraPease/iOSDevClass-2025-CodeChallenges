//  🏔️ MTECH Code Challenge ND16: "Punctuation Removal"
//  Concept: Practice manipulating a string

//  Instructions:
//  Remove any punctuation mark from the end of a string.
//  If the string ends with a punctuation mark (e.g., '.', ',', '!', '?', ';', ':', '-', '_'), remove only the last occurrence of such a mark.
//  If the input string is empty, return an empty string.

//  Examples:
//  Input: "Greetings, friends!!"
//  Output: "Greetings, friends!"

//  Input: "Wow."
//  Output: "Wow"

//  ⌺ Black Diamond Challenge:
//  Create another function. This time, remove all leading and trailing punctuation, including multiples.
//  Input: "...This is a good example!!!", Output: "This is a good example"

import Foundation




func removePuncuation(from input: String) -> String {
    var originalInput = input
    guard !originalInput.isEmpty else { return input }
    
    if originalInput.last?.isPunctuation == true {
        originalInput.removeLast()
    }
    return originalInput
}

print(removePuncuation(from: "Hello!"))
print(removePuncuation(from: "My Name is Ezra"))
print(removePuncuation(from: "H#llo.,"))
print("\n")


// BLACK DIAMOND
func removeAllPuncuation(from input: String) -> String {
    input.trimmingCharacters(in: CharacterSet.punctuationCharacters)
}


print(removeAllPuncuation(from: "...This is a good example!!!"))
print(removeAllPuncuation(from: ",.,...,,...,Hello!"))
print(removeAllPuncuation(from: "Goodbye.,._______"))
