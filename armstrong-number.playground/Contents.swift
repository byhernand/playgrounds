import Foundation


func isArmstrong(number: Int) -> Bool {
    let digits = String(number)
    var result = 0
    
    if number > 1 && number < 10 {
        return false
    }

    for char in digits {
        if var digit = char.wholeNumberValue {
            let calc = "\(pow(Decimal(digit), digits.count))"
            result += Int(calc)!
        }
    }
    
    return number == result
}


print(isArmstrong(number: 371))
