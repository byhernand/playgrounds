import UIKit

// Helpers
func roundNumber(_ num: Double) -> Double {
    return round(num * 100) / 100.0
}

// Basic calculator
func calculator(operation: String, num1: Double, num2: Double) {
    switch operation {
    case "sum":
           print(num1 + num2)
    case "subtraction":
           print(num1 - num2)
    case "multiply":
           print(num1 * num2)
    case "divide":
           print(num1 / num2)
    default:
        print("Wrong operator")
    }
}

// What percentage one number is of another
func percentage(num1: Double, num2: Double) {
    let calc = num1 * 100.0 / num2
    let result = roundNumber(calc)

    print("\nThe number \(num1) is \(result)% of \(num2)")
}

//calculator(operation: "divide", num1: 22, num2: 6)
percentage(num1: 30, num2: 75)
