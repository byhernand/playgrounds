import Foundation


func isPrime(_ num: Int) -> Bool {
    let primeNumbers = [2,3,5,7]
    var calc = true
    
    for prime in primeNumbers {
        if primeNumbers.contains(num) {
            break
        }
        if num % prime == 0 || num == 1 {
            calc = false
            break
        }
    }
    
    return calc
}


for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}
