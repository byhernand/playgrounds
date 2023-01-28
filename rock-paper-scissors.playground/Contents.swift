import Foundation

let rock = "rock"
let paper = "paper"
let scissors = "scissors"


func randomOption() -> String {
    let options = [rock, paper, scissors]
    let randomNum = Int.random(in: 0..<options.count)
    return options[randomNum]
}


func play(user: String) {
    let pc = randomOption()
    var result : String
    
    print("You choose \"\(user)\".")

    switch user {
    case pc:
        print("PC choose \"\(pc)\", it's a draw!")
    case rock:
        result = pc == scissors ? "win" : "lose"
        print("PC choose \"\(pc)\", you \(result)!")
    case paper:
        result = pc == rock ? "win" : "lose"
        print("PC choose \"\(pc)\", you \(result)!")
    case scissors:
        result = pc == paper ? "win" : "lose"
        print("PC choose \"\(pc)\", you \(result)!")
    default:
        print("Wrong option")
    }
}

play(user: rock)
