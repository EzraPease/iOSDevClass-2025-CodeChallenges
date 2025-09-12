//  🏔️ MTECH Code Challenge SF08: "Person Behaviors"
//  Concept: Practice creating structs, comparing two structs, and mutating struct values

//  Instructions:
    //  Create a Person value type with the following attributes and behaviors:
        //  Attributes: name, age, height, weight
        //  Behaviors:
            //  greeting: Print "Hello, my name is <name>, and I am <age> years old."
            //  birthday: Increase age by one
            //  growUp: Increase height by 0.1

//  ⌺ Black Diamond Challenge:
    //  Add a variable called bodyMassIndex. Set its initial value to 0. Assuming height is in meters and weight is in kilograms, compute the bodyMassIndex property any time height and weight change.

import Foundation



struct Person {
    var name: String
    var age: Int
    var height: Double {
        didSet {
                bodyMassIndex = weight / (height * height)
        }
    }
    var weight: Double {
        didSet {
                bodyMassIndex = weight / (height * height)
        }
    }
    var bodyMassIndex: Double = 0
    
    
    func greeting() {
        print("Hello, my name is \(name), and I am \(age) years old.")
    }
    mutating func birthday() {
        age += 1
    }
    mutating func growUp() {
        height += 0.1
    }
}
var person1 = Person(name: "John", age: 25, height: 175, weight: 70)
person1.greeting()
person1.birthday()
person1.greeting()
print(person1.bodyMassIndex)
person1.height = 6
person1.weight = 172
print(person1.bodyMassIndex)

person1.height = 5
person1.weight = 292
print(person1.bodyMassIndex)

