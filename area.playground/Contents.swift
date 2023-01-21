import Foundation


let triangle = "triangle"
let square = "square"
let rectangle = "rectangle"

func area(polygon: String, b: Int, h: Int) -> Int {
    var result = 0

    switch polygon {
    case triangle:
        result = b * h / 2
    case rectangle:
        result = b * h
    case square:
        let l = b
        result = l * l
    default:
        return -1
    }

    return result
}

let calc = area(polygon: triangle, b: 5, h: 8)

print(calc)
