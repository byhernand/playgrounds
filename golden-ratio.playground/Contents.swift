import UIKit

func roundNumber(value: Double) -> Double {
    return round(value * 10000) / 10000.0 // 4 decimals
}

func fibonacci(num: Double, numOfTimes: UInt8) {
    print("🔢 Number \(Int(num))")

    var result = num
    var identation = " ⎿"

    for n in 1...numOfTimes {
        result = result / 1.6180
        result = roundNumber(value: result)
        print("\(identation) \(n)x \(result)")
        
        identation.insert(" ", at: identation.startIndex)
    }
}

fibonacci(num: 20, numOfTimes: 4)
