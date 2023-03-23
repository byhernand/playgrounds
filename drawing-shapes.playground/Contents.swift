import Foundation


enum Polygon: String {
    case square, triangle
}


func drawShape(width: Int, shape: Polygon) {
    func drawSquare() {
        var line = "*"

        // Creating full line
        for _ in 1..<width {
            line.insert(contentsOf: " *", at: line.endIndex)
        }

        // Printing shape
        for _ in 1...width {
            print(line)
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
