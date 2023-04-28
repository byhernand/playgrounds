import Foundation

/*
    Challenge:
 
    The digit distance between two numbers is the total value
    of the difference between each pair of digits.
 
    234 & 489
    
    (2 - 4) + (3 - 8) + (4 - 9) = -12
*/

enum DigitError: Error {
    case differentLength, digitOneHigher
}

func digitDistance(_ numOne: Int, _ numTwo: Int) throws {
    let digitsOne = String(numOne).map { Int(String($0)) }
    let digitsTwo = String(numTwo).map { Int(String($0)) }
    var distance = Int()

    if digitsOne.count != digitsTwo.count {
        throw DigitError.differentLength
    }

    for (idx, _) in digitsOne.enumerated() {
        let digitOne = digitsOne[idx]!
        let digitTwo = digitsTwo[idx]!

        if digitOne > digitTwo { throw DigitError.digitOneHigher }

        distance += digitOne - digitTwo
    }

    print(distance)
}


do {
    try digitDistance(121, 599)
    try digitDistance(12, 12)
    try digitDistance(10, 20)
//    try digitDistance(50, 10)
//    try digitDistance(20, 300)
}
catch DigitError.differentLength {
    print("❌ The numbers have a different quantity of digits.")
}
catch DigitError.digitOneHigher {
    print("❌ The digits in number one must be higher than the digits in number two.")
}

