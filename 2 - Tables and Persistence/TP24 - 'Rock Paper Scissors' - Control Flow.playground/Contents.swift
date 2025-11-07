//  🏔️ MTECH Code Challenge TP24: "Rock Paper Scissors"
//  Concept: Practice writing functions with game logic

//  Instructions:
    //  Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors", with one input for each player respectively.
    //  Determine who wins, and return a string saying which player won.

//  Examples:
    //  Input: "scissors", "paper"
    //  Output: "Player 1 won!"

    //  Input: "scissors", "rock"
    //  Output: "Player 2 won!"
    
    //  Input: "paper", "paper"
    //  Output: "Draw!"

//  ⌺ Black Diamond Challenge:
    //  Expand your game to include Spock and Lizard as weapon options. You can view the matchups here: 🔗https://www.samkass.com/theories/RPSSL.html

import Foundation


// Available Answers for Rock Paper Scissors
enum RockPaperScissorsAnswers {
    case rock
    case paper
    case scissors
    case spock
    case lizard
}

func rockPaperScissors(player1 input1: RockPaperScissorsAnswers, player2 input2: RockPaperScissorsAnswers) {
    
    
    // Example Option on how to codence the switch statments
//    switch (input1, input2) {
//    case (.rock, .paper), (.paper, .scissors):
//        print("Player 2 wins")
//    }
    
    switch input1 {
    case .rock:
        switch input2 {
        case .rock:
            print("Its a tie!")
        case .paper:
            print("Player 2 wins!")
        case .scissors, .lizard:
            print("Player 1 wins!")
        case .spock:
            print("Player 2 wins!")
        }
    case .paper:
        switch input2 {
        case .rock:
            print("Player 1 wins!")
        case .paper:
            print("Its a tie!")
        case .scissors:
            print("Player 2 wins!")
        case .spock:
            print("Player 1 wins!")
        case .lizard:
            print("Player 2 wins!")
        }
    case .scissors:
        switch input2 {
        case .rock:
            print("Player 2 wins!")
        case .paper:
            print("Player 1 wins!")
        case .scissors:
            print("Its a tie!")
        case .spock:
            print("Player 2 wins!")
        case .lizard:
            print("Player 1 wins!")
        }
    case .spock:
        switch input2 {
        case .rock:
            print("Player 2 wins!")
        case .paper:
            print("Player 1 wins!")
        case .scissors:
            print("Player 1 wins!")
        case .spock:
            print("Its a tie!")
        case .lizard:
            print("Player 2 wins!")
        }
    case .lizard:
        switch input2 {
        case .rock:
            print("Player 2 wins!")
        case .paper:
            print("Player 1 wins!")
        case .scissors:
            print("Player 2 wins!")
        case .spock:
            print("Player 1 wins!")
        case .lizard:
            print("Its a tie!")
        }
    }
}


rockPaperScissors(player1: .paper, player2: .scissors)
rockPaperScissors(player1: .rock, player2: .scissors)
rockPaperScissors(player1: .rock, player2: .rock)
rockPaperScissors(player1: .scissors, player2: .spock)
rockPaperScissors(player1: .lizard, player2: .paper)
