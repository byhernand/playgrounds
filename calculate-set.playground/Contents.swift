import Foundation


func calcSet(first: [Int], second: [Int], findCommonItems: Bool) -> [Int] {
    var result = [Int]()

    if findCommonItems {
        first.forEach { aFirstArrayItem in
            if second.contains(aFirstArrayItem) {
                result.append(aFirstArrayItem)
            }
        }
    } else {
        first.forEach { aFirstArrayItem in
            if !second.contains(aFirstArrayItem) {
                result.append(aFirstArrayItem)
            }
        }
        second.forEach { aSecondArrayItem in
            if !first.contains(aSecondArrayItem) {
                result.append(aSecondArrayItem)
            }
        }
    }

    return result
}


let evenNumbers = [2,4,6,8]
let primeNumbers = [2,3,5,7]


print(calcSet(first: primeNumbers, second: evenNumbers, findCommonItems: false))
print(calcSet(first: primeNumbers, second: evenNumbers, findCommonItems: true))
