import Foundation


enum Choices: String {
    case rock, paper, scissors
}


func randomChoice() -> Choices {
    let options: [Choices] = [.rock, .paper, .scissors]
    let randomOption = Int.random(in: 0..<options.count)
    return options[randomOption]
}


func play(with userChoice: Choices) {
    let pcChoice = randomChoice()
    var result = String()

    switch userChoice {
        case pcChoice:
            result = "It's a draw"
        case .rock:
            result = pcChoice == .scissors ? "You win" : "You lose"
        case .paper:
            result = pcChoice == .rock ? "You win" : "You lose"
        case .scissors:
            result = pcChoice == .paper ? "You win" : "You lose"
    }

    print("💪🏼 You choose \"\(userChoice.rawValue.capitalized)\"")
    print("🦾 PC choose \"\(pcChoice.rawValue.capitalized)\"")
    print("🗣️ \(result)!")
}


play(with: .rock)
