//  🏔️ MTECH Code Challenge TP25: "Rock Paper Scissors 2.0"
//  Concept: Add custom randomization to a function. Black Diamond: Parse arrays.

//  Instructions:
    //  Create a function that takes in a string (enum :3) as input. This is the users move (either rock, paper, or scissors).
    //  Randomly decide what the computers choice is.
    //  Return a string which declares the winner.

//  Examples:
    //  Input: "rock"
    //  Output: "I chose paper. You lose!"
    //  Output: "I chose rock. Draw! Go again?"
    //  Output: "I chose scissors. I lose."

//  ⌺ Black Diamond Challenge:
    //  Create another function that instead accepts an array as input. If only one move is entered, generate a random one for the computer; if two are entered, compare them.
    //  If more than two moves are input, the winners are the players who voted for the most popular move.

import Foundation

enum Answers: CaseIterable {
    case rock
    case paper
    case scissors
}

//enum Errors: Error {
//    case unableToProduceRNGAnswer
//    case noValidInput
//}

func rockPaperRNG(input: Answers) /*throws*/ -> String {
    if let choiceRNG = Answers.allCases.randomElement() {
//        print(choiceRNG)
//    } else {
//        throw Errors.unableToProduceRNGAnswer
        switch (input, choiceRNG) {
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper): // Player Wins
            return "I chose \(choiceRNG). You WIN!!"
        case (.paper, .scissors), (.scissors, .rock), (.rock, .paper): // RNG Wins
            return "I chose \(choiceRNG). I WIN!!"
        default: // Tie
            return "I chose \(choiceRNG). It's a TIE!!"
        }
    }
    return "\(input)"
}


//do {
    /*try*/ print(rockPaperRNG(input: .scissors))
//} catch {
//    print(error)
//}





// BLACK DIAMOND
//func rockPaperRNG(input: [Answers]) -> String {
//    if input.count
//    let answerArray: [Answers] = [.rock, .paper, .scissors] // Array for checking RNG answer
//    if let choiceRNG = answerArray.shuffled().first {
//
//        switch (input, choiceRNG) {
//        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper): // Player Wins
//            return "I chose \(choiceRNG). You WIN!!"
//        case (.paper, .scissors), (.scissors, .rock), (.rock, .paper): // RNG Wins
//            return "I chose \(choiceRNG). I WIN!!"
//        default: // Tie
//            return "I chose \(choiceRNG). It's a TIE!!"
//        }
//    }
//    return "\(input)"
//}
