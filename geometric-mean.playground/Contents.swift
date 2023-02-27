import Foundation


/* Helpers */
func roundNumber(_ num: Float) -> Float {
    return round(num * 100) / 100.0 // 2 decimals
}


/* Main function */
func geometricMean(_ numbers: Float...) -> Float {
    let nthRoot = Float(numbers.count)
    var base: Float = 1.0

    for num in numbers {
        base *= num
    }

    let calc = pow(base, (1/nthRoot))

    return roundNumber(calc)
}


print(geometricMean(2,4,8))
print(geometricMean(2,4,6,12,18))
print(geometricMean(4,9,8,6,5,4,2))
