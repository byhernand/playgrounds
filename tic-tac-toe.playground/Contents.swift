import Foundation


enum gameError: Error {
    case noValidCount
    case noValidGame
}


// Helpers
func playing(with opt: String, inThe arr: [[String]]) -> Bool {
    let row1 = arr[0] == [opt,opt,opt]
    let row2 = arr[1] == [opt,opt,opt]
    let row3 = arr[2] == [opt,opt,opt]
    let column1 = arr[0][0] == opt && arr[1][0] == opt && arr[2][0] == opt
    let column2 = arr[0][1] == opt && arr[1][1] == opt && arr[2][1] == opt
    let column3 = arr[0][2] == opt && arr[1][2] == opt && arr[2][2] == opt
    let diagonal1 = (arr[0][0], arr[1][1], arr[2][2]) == (opt,opt,opt)
    let diagonal2 = (arr[0][2], arr[1][1], arr[2][0]) == (opt,opt,opt)
    
    if row1 || row2 || row3 || column1 || column2 || column3 || diagonal1 || diagonal2 {
        return true
    } else {
        return false
    }
}


func countItems(_ matrix: [[String]]) -> (Int, Int) {
    var count = (X: 0, O: 0)

    for subMatrix in matrix {
        for item in subMatrix {
            if item == "X" {
                count.X += 1
            } else if item == "O" {
                count.O += 1
            }
        }
    }

    return count
}


// Main function
func ticTacToe(_ matrix: [[String]]) throws -> String {
    // Error detection
    switch countItems(matrix) {
        case let (X, O) where O >= X:
            throw gameError.noValidCount
        case (0, 0):
            throw gameError.noValidGame
        default:
            break
    }

    // Choose winner
    if playing(with: "X", inThe: matrix) {
        return "X"
    } else if playing(with: "O", inThe: matrix) {
        return "O"
    } else {
        return "It's a draw"
    }
}


let game = [
    ["O", "O", "X"],
    ["O", "X", ""],
    ["X", "X", ""]
]


do {
    try print(ticTacToe(game))
}
catch gameError.noValidCount {
    print("❌ The X count cannot be less or equal than O count")
}
catch gameError.noValidGame {
    print("❌ The game is empty")
}
