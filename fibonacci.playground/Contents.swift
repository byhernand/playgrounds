import Foundation

var num1 = 0
var num2 = 0

for i in 0...49  {
    let calc = num1 + num2

    if i < 1 {
        num1 += 1
    }
    if i > 1 {
        num2 = num1
        num1 = calc
    }

    print("#\(i+1): \(calc)")
}
