import Foundation

enum Polygon: String {
    case square
}

func drawShape(width: Int, shape: Polygon) {
    var length = 1...width

    for _ in length {
        for n in length {
            print("* ", terminator: n == width ? "\n" : "")
        }
    }
}

drawShape(width: 4, shape: .square)
