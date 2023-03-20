import Foundation

/*
    Who wins more "rock, paper and scissors" games?

    Instructions:
    • Return a string with the winner, "Player 1" or "Player 2"
    • If it's a draw, return "Tie"
*/

enum Move: String {
    case rock, paper, scissors
}

typealias Versus = [(Move, Move)]


let round1: Versus = [(.rock, .scissors), (.scissors, .rock), (.paper, .scissors)]
let round2: Versus = [(.rock, .scissors), (.paper, .rock), (.paper, .scissors)]
let round3: Versus = [(.rock, .rock), (.paper,.paper), (.scissors, .scissors)]


func play(_ games: Versus) -> String {
    var player1Games = 0, player2Games = 0

    for game in games {
        switch game {
        case let (player1, player2) where player1 == player2:
            break // It's a draw
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            player1Games += 1
        default:
            player2Games += 1
        }
    }

    if player1Games > player2Games {
        return "Player 1"
    } else if player2Games > player1Games {
        return "Player 2"
    } else {
        return "Tie"
    }
}


print(play(round1))
print(play(round2))
print(play(round3))
