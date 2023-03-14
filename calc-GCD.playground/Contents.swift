import Foundation


// Greatest Common Divisor
func calcGCD(_ number1: Int, _ number2: Int) {
    var num1 = number1
    var num2 = number2

    func calcPrimeFactors(_ number: Int) -> [Int] {
        var number = number
        let primeNumbers = [2, 3, 5, 7, 11, 13, 19]
        var primeFactors = [Int]()
        var idx = 0

        while number > 1 {
            if number % primeNumbers[idx] == 0 {
                number /= primeNumbers[idx]
            } else {
                idx += 1
                continue
            }
            primeFactors.append(primeNumbers[idx])
        }

        return primeFactors
    }

    let num1PrimeFactors = calcPrimeFactors(num1)
    let num2PrimeFactors = calcPrimeFactors(num2)
    var result = 1

    num2PrimeFactors.forEach {
        if num1PrimeFactors.contains($0) {
            result *= $0
        }
    }

    print("GCD of \(number1) and \(number2) is \(result)")
}


calcGCD(48, 12)
calcGCD(225, 300)
calcGCD(380, 420)
