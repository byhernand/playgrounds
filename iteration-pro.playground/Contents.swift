import Foundation

/*
 * Counting from 0 to 100 with different methods.
*/


print("Method #1")
for number in 1...100 {
    print(number, terminator: number < 100 ? "," : "")
}


print("\n\n\nMethod #2")
func countToOneHundred(_ number: Int) {
    var number = number
    print(number, terminator: number < 100 ? "," : "")
    
    if number < 100 {
        countToOneHundred(number + 1)
    }
}

countToOneHundred(1)


print("\n\n\nMethod #3")
var x = 1

while x <= 100 {
    print(x, terminator: x < 100 ? "," : "")
    x += 1
}


print("\n\n\nMethod #4")
var y = 1

repeat {
    print(y, terminator: y < 100 ? "," : "")
    y += 1
} while y <= 100


print("\n\n\nMethod #5")
let range = 1...100

range.forEach { print($0, terminator: $0 < 100 ? "," : "") }
