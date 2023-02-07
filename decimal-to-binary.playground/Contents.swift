import Foundation


func decimalToBinary(_ number: Int) -> String {
    var decimal = number
    var binary = ""
    var oneOrZero : Character

    while decimal >= 1 || decimal <= -1 {
        oneOrZero = decimal % 2 == 0 ? "0" : "1"
        binary.insert(oneOrZero, at: binary.startIndex)
        decimal /= 2
    }

    // Negative number
    if number < 0 {
        binary.insert("-", at: binary.startIndex)
    }

    return binary.isEmpty ? "0" : binary
}


print(decimalToBinary(94))
