//  🏔️ MTECH Code Challenge TP10: "Palindromes"
//  Concept: Practice finding mathematical/code/logical solutions to language related tasks. You'll need to think about what makes a palindrome a palindrome and how that can translate to code.

//  Instructions:
    //  You may remember that a palindrome is a word that's spelled the same backward and forwards — like "mom" or "racecar."
    //  Create a function that accepts a string as input and returns TRUE if the string is a palindrome.

//  Examples:
    //  Input: "rotator"
    //  Output: true

    //  Input: "mississippi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Find a way to check whether a phrase or sentence is a palindrome — for example, "Taco Cat" or, "Too bad I hid a boot." You'll have to find a way to remove spaces in your phrases to get the function to work.

//  Fun Facts:
    //  The Finnish word "saippuakauppias" is 15 letters, is a palindrome, and is used regularly.
    //  "A man, a plan, a canal - panama!" is a famous palindrome by Leigh Mercer; Dan Hoey expanded it to 540 words: 🔗http://complex.gmu.edu/people/ernie/witty/Hoey_palindrome.html

import Foundation


func checkPalindrome(text textInput: String) -> Bool {
    let reversedText = textInput.lowercased().reversed()
    if textInput.lowercased() == String(reversedText) {
        return true
    }
    return false
}



// BLACK DIAMOND
func checkPhrasePalindrome(phrase textInput: String) -> Bool {
    print("--------- START ---------")
    let charactersToReplace = CharacterSet.punctuationCharacters.union(.whitespaces)
    let trimmedText = textInput.components(separatedBy: charactersToReplace).joined()
    print(trimmedText)
    let reversedText = trimmedText.lowercased().reversed()
    print(reversedText)
    if trimmedText.lowercased() == String(reversedText) {
        print("------ END ------")
        return true
    }
    print("------ END ------")
    return false
}


print(checkPalindrome(text: "rAcECar"))
print(checkPalindrome(text: "Mom"))
print(checkPalindrome(text: "apple"))

print("---------------------")

// BLACK DIAMOND
print(checkPhrasePalindrome(phrase: "Taco Cat"))
print(checkPhrasePalindrome(phrase: "Too bad I hid a boot."))
print(checkPhrasePalindrome(phrase: "A man, a plan, a canal - panama!"))
