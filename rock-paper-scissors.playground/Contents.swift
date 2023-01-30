import Foundation


let rock = "rock"
let paper = "paper"
let scissors = "scissors"


func randomChoice() -> String {
    let options = [rock, paper, scissors]
    let randomIdx = Int.random(in: 0..<options.count)
    return options[randomIdx]
}


func play(userChoice: String) {
    let pcChoice = randomChoice()
    var result = String()

    switch userChoice {
    case pcChoice:
        result = "It's a draw"
    case rock:
        result = pcChoice == scissors ? "You win" : "You lose"
    case paper:
        result = pcChoice == rock ? "You win" : "You lose"
    case scissors:
        result = pcChoice == paper ? "You win" : "You lose"
    default:
        result = "Null choice, try again"
    }

    print("🦾 PC choose \"\(pcChoice)\"")
    print("💪🏼 You choose \"\(userChoice)\"")
    print("🗣️ \(result)!")
}


play(userChoice: rock)
