import Foundation

let range = 1...100
let groupOne = range.filter { $0 == 2 || $0 == 3 || $0 == 5 || $0 == 7 }
let groupTwo = range.filter { $0 == 1 || $0 % 2 == 0 || $0 % 3 == 0 || $0 % 5 == 0 || $0 % 7 == 0 ? false : true }

let primeNumbers = groupOne + groupTwo

print(primeNumbers)
