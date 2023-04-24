import Foundation

/*
 Challenge:

 Create a function that sums the total number of digits between two numbers, inclusive.
 For example, between the numbers 19 and 21 we have:

 // 19, 20, 21
 (1 + 9) + (2 + 0) + (2 + 1) = 19
*/

func sumDigits(_ numOne: Int, _ numTwo: Int) -> Int? {
    if numOne > numTwo { return nil }

    let numbers: [Character: Int] = ["0":0, "1":1, "2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9]
    var total = Int()

    for number in numOne...numTwo {
        // Split number in digits
        String(number).forEach { total += numbers[$0]! }
    }

    return total
}


print(sumDigits(7, 8) ?? "Error")
print(sumDigits(17, 20) ?? "Error")
print(sumDigits(10, 12) ?? "Error")
print(sumDigits(45, 52) ?? "Error")
// print(sumDigits(100, 1) ?? "Error")
