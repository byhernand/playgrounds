import Foundation


let digitNames = [
    0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four",
    5:"Five", 6:"Six", 7:"Seven", 8:"Eight", 9:"Nine"
]


let numbers = [16, -58, 510, 2127]

let numbersString = numbers.map { number -> String in
    var number = number
    var output = ""
    var isNegativeNum = false

    if number < 0 {
        isNegativeNum = true
        number = -number
    }

    repeat {
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0

    return isNegativeNum ? "Minus\(output)" : output
}


print(numbersString)
