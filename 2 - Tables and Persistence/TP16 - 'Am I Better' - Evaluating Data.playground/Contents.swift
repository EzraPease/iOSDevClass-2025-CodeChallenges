//  🏔️ MTECH Code Challenge TP16: "Am I Better?"
//  Concept: Practice evaluating data from an array

//  Instructions:
    //  There was a test in your class and you passed it. Congratulations!
    //  But you're an ambitious person. You want to know if you're better than the average student in your class.
    //  Create a function that accepts two parameters as input, your score and an array of your peers' scores, and returns true if you're better than them, or false if you're worse.

// Notes:
    //  Your points are not included in the array of your class's points. For calculating the average point you may add your points to the given array.

//  Examples:
    //  Input: myScore: 100, classScores: [80,39,90,88,68,78,39,99]
    //  Output: true

//  ⌺ Black Diamond Challenge:
    //  Create another function. This one should instead accept a dictionary with String keys and Int values. The strings represent the names of each of your classmates, and the integers are their scores. Return an array of the names of every classmate that you scored better than.

import Foundation


func amITheBest(myScore: Int, classScores: [Int]) -> Bool {
    let highestScore = classScores.max() ?? 0 // Storing the highest value of classScores
    if highestScore < myScore { // Output logic
        print("Congrats!! You are the best! The highest score was \(highestScore), and yours was \(myScore)")
        return true
    }
    print("You have failed to become the best, do better! The highest score was \(highestScore), and yours was \(myScore)")
    return false
}

// BLACK DIAMOND FUNCTION
func listEachStudentIOutScored(myScore: Int, classScores: [String : Int]) -> [String] {
    var studentsYouBeat: [String] = [] // Stored names of students with a lower score than "myScore"
    for index in classScores {
        if index.value < myScore { // Checks which score is higher
            studentsYouBeat.append(index.key)
        }
    }
    if studentsYouBeat.isEmpty { // Output logic
        print("Sorry, you did not out score anyone")
        
    } else {
        print("You beat the following students: \(studentsYouBeat)")
    }
    return studentsYouBeat
}


let classScores = [80,39,90,88,68,78,39,99]

// BLACK DIAMOND DICTIONARY
let namedTestScores: [String: Int] = [
    "Alice": 92,
    "Brandon": 85,
    "Chloe": 77,
    "Derek": 88,
    "Emilia": 95,
    "Felix": 68,
    "Grace": 73,
    "Hector": 99
]

amITheBest(myScore: 98, classScores: classScores)
amITheBest(myScore: 100, classScores: classScores)

// BLACK DIAMOND
listEachStudentIOutScored(myScore: 97, classScores: namedTestScores)
listEachStudentIOutScored(myScore: 7, classScores: namedTestScores)
