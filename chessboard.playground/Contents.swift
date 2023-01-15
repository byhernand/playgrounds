import UIKit
import PlaygroundSupport

let vc = UIViewController()

let chessboard = UILabel(frame: CGRect(x: 300, y: 200, width: 200, height: 300))
chessboard.text = ""
chessboard.numberOfLines = 0

let description = UILabel(frame: CGRect(x: 276, y: 440, width: 250, height: 50))
description.text = "Chessboard with Swift and UIkit"

var initialPattern = true

for num in  1...64 {
    if initialPattern {
        chessboard.text! += num % 2 == 0 ? "⬛️" : "⬜️"
    } else {
        chessboard.text! += num % 2 == 0 ? "⬜️" : "⬛️"
    }

    // Line break
    if num % 8 == 0 {
        chessboard.text! += "\n"
        initialPattern = !initialPattern
    }
}

vc.view.addSubview(chessboard)
vc.view.addSubview(description)
vc.view.backgroundColor = .lightGray
PlaygroundPage.current.liveView = vc
