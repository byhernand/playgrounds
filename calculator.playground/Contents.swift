import Foundation


enum Arithmetic {
    case sum, substraction, multiplication, division
}


func calculator(numOne: Float, numTwo: Float, operation: Arithmetic) {
    let calc : Float

    func roundNumber(of num: Float) -> Float {
        return round(num * 10_000) / 10_000.0
    }

    switch operation {
    case .sum:
           calc = numOne + numTwo
    case .substraction:
           calc = numOne - numTwo
    case .multiplication:
           calc = numOne * numTwo
    case .division:
           calc = numOne / numTwo
    }

    print(roundNumber(of: calc))
}


calculator(numOne: 54, numTwo: 1, operation: .sum)
calculator(numOne: 768, numTwo: 342, operation: .substraction)
calculator(numOne: 22, numTwo: 6, operation: .multiplication)
calculator(numOne: 2_130, numTwo: 560, operation: .division)
