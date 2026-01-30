//  🏔️ MTECH Code Challenge SD03: "camelCase & snake_case" 🐫🐍
//  Concept: Practice using a string as a collection, evaluating and modifying it as needed

//  Instructions:
    //  Create two functions toCamelCase() and toSnakeCase() that each take a single string and convert it into either camelCase or snake_case. If you're not sure what these terms mean, google it.

//  Notes:
    //  You can assume that the input will always be appropriately formatted as either camelCase or snake_case, depending on the function being called.

//  Examples:
    //  Input: toCamelCase("hello_edabit"), Output: "helloEdabit"
    //  Input: toSnakeCase("helloEdabit"), Output: "hello_edabit"
    //  Input: toCamelCase("is_modal_open"), Output: "isModalOpen"
    //  Input: toSnakeCase("getColor"), Output: "get_color"

//  ⌺ Black Diamond Challenge:
    //  Write another function that can identify whether a String is in camelCase or snake_case; use that function to sanitize your input to the other two functions.
    //  Write two more functions that convert a string into PascalCase and kebab-case, respectively.

import Foundation

func toCamelCase(input: String) -> String {
    var startingValue = input
    var result = ""
    var capitalizeNextLetter = false
    
    for character in startingValue {
        if character == "_" {
            capitalizeNextLetter = true
        } else {
            if capitalizeNextLetter {
                result.append(character.uppercased())
            } else {
                result.append(character)
            }
            capitalizeNextLetter = false
        }
    }
    return result
}

func toSnakeCase(input: String) -> String {
   var result = ""
    
    for character in input {
        if character.isUppercase {
            result.append("_")
            result.append(character.lowercased())
        } else {
            result.append(character)
        }
    }
    return result
}

print(toCamelCase(input: "this_should_be_camel_case"))
print(toSnakeCase(input: "thisShouldBeSnakeCase"))
