import UIKit

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

calculator(operation: "divide", num1: 22, num2: 6)
