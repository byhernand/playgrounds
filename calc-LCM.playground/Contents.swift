import Foundation


// Least Common Multiple
func calcLCM(_ number1: Int, _ number2: Int) {
    let primeNumbers = [2, 3, 5, 7, 11, 13, 19]
    var num1 = number1
    var num2 = number2
    var primeFactors = [Int]()
    var idx = 0
    var result = 1

    while num1 > 1 || num2 > 1 {
        if num1 % primeNumbers[idx] != 0 && num2 % primeNumbers[idx] != 0 {
            idx += 1
            continue
        }
        if num1 % primeNumbers[idx] == 0 {
            num1 /= primeNumbers[idx]
        }
        if num2 % primeNumbers[idx] == 0 {
            num2 /= primeNumbers[idx]
        }

        primeFactors.append(primeNumbers[idx])
    }

    primeFactors.forEach { num in
        result *= num
    }

    print("LCM of \(number1) and \(number2) is \(result)")
}


calcLCM(4, 30)
calcLCM(7, 32)
calcLCM(40, 76)
