import Foundation


enum AtmError: Error {
    case noValidQuantity
}


var atmBills = [
    200: 2,
    100: 3,
    50: 5,
    10: 20,
    5: 10
]


func withdraw(quantity: Int) throws -> [Int] {
    var moneyLeft = quantity
    var result = [Int]()
    let bills = [Int](atmBills.keys.sorted(by: { $0 > $1 }))

    for billValue in bills {
        if moneyLeft < billValue {
            continue
        }

        let billQuantity = moneyLeft / billValue

        moneyLeft = moneyLeft - (billValue * billQuantity)
        atmBills[billValue]! -= billQuantity

        for _ in 1...billQuantity {
            result.append(billValue)
        }

        if moneyLeft == 0 {
            break
        }
    }

    if moneyLeft > 0 {
        throw AtmError.noValidQuantity
    } else {
        return result
    }
}


do {
    try print(withdraw(quantity: 500))
    try print(withdraw(quantity: 75))
    try print(withdraw(quantity: 230))
} catch AtmError.noValidQuantity {
    print("❌ No valid quantity.")
}
