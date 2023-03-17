import Foundation


func isPrime(_ num: Int) -> Bool {
    let primeNumbers = [2,3,5,7]

    if num <= 1 { return false }

    if primeNumbers.contains(num) { return true }

    for primeNum in primeNumbers {
        if num % primeNum == 0 { return false }
    }

    return true
}


for number in 1...100 {
    if isPrime(number) {
        print(number, terminator: number < 97 ? "," : "")
    }
}
