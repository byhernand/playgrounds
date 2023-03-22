import Foundation


enum Polygon: String {
    case square, triangle
}


func drawShape(width: Int, shape: Polygon) {
    func drawSquare() {
        var length = 1...width
        for _ in length {
            for n in length {
                print("* ", terminator: n == width ? "\n" : "")
            }
        }
    }
    
    func drawTriangle() {
        var pieces = "*"
        var i = 1

        while i <= width {
            print(pieces)
            pieces.insert(contentsOf: " *", at: pieces.endIndex)
            i += 1
        }
    }

    switch shape {
        case .square:
            drawSquare()
        case .triangle:
            drawTriangle()
    }
}


drawShape(width: 6, shape: .square)
print("")
drawShape(width: 6, shape: .triangle)
