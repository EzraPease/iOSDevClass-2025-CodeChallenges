//  🏔️ MTECH Code Challenge TP19: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
//  When provided with a letter, return its position in the English alphabet.
//  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
//  Input: "a"
//  Output: 1

//  Notes:
//  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
//  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
//  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation

let alphabet: [String: Int] = Dictionary(uniqueKeysWithValues:
                                            zip("abcdefghijklmnopqrstuvwxyz".map { String($0) }, 1...)
)

enum AlphabetError: LocalizedError {
    case incorectLetterAmount(String)
    case notALetter
    case unkown
}

func findLetterIndex(of letter: String) throws -> Int {
    guard letter.count == 1 else {
        throw AlphabetError.incorectLetterAmount("ALPHABET ERROR - Incorect Letter Amount: \(letter.count)")
    }
    guard let result = alphabet[letter.lowercased()] else {
        throw AlphabetError.notALetter
    }
    
    print(result)
    return result
    
}

do {
    try findLetterIndex(of: "1jijijit65f6gv6g7g")
} catch {
    print(error)
}

