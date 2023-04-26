import Foundation

/*
    Challenge: Create a function that takes an array of positive and negative numbers.
               Return an array where the first element is the count of positive numbers
               and the second element is the sum of negative numbers.
*/


func countPosSumNeg(_ numbers: [Int]) -> [Int] {
    var positive = Int()
    var negative = Int()

    numbers.forEach { number in
        if number < 0 {
            negative += number
        } else {
            positive += 1
        }
    }

    return numbers.isEmpty ? [] : [positive, negative]
}


print(countPosSumNeg([92, 6, 73, -77, 81, -90, 99, 8, -85, 34]))
print(countPosSumNeg([91, -4, 80, -73, -28]))
print(countPosSumNeg([9, -54, 31, -69, 8, 106, -64, 7, 207, 15]))
print(countPosSumNeg([]))
