import UIKit

var chessboard = String()
var initialPattern = true

for num in  1...64 {
    if initialPattern {
        chessboard += num % 2 == 0 ? "⬛️" : "⬜️"
    } else {
        chessboard += num % 2 == 0 ? "⬜️" : "⬛️"
    }

    // Line break
    if num % 8 == 0 {
        chessboard += "\n"
        initialPattern = !initialPattern
    }
}

print("""
\(chessboard)\

Chessboard with Swift
""")
