import Foundation


enum Polygon: String {
    case square, triangle, rectangle
}


func drawShape(width: Int, shape: Polygon) {
    var line = "*"

    switch shape {
        case .square, .rectangle:
            for _ in 1..<width {
                // Creating full line
                line.insert(contentsOf: " *", at: line.endIndex)
            }
            for _ in 1...(shape == .square ? width : (width - 2)) {
                print(line)
            }
        case .triangle:
            for _ in 1...width {
                print(line)
                line.insert(contentsOf: " *", at: line.endIndex)
            }
    }
}


drawShape(width: 6, shape: .square)
print("")
drawShape(width: 6, shape: .triangle)
print("")
drawShape(width: 8, shape: .rectangle)
