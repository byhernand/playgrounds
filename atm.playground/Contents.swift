import Foundation


var atmBills = [
    200: 2,
    100: 3,
    50: 5,
    10: 20,
    5: 10
]


func withdraw(quantity: Int) {
    var money = quantity
    let bills = [Int](atmBills.keys.sorted(by: { $0 > $1 }))
    var result = [Int]()

    for billValue in bills {
        if money < billValue {
            continue
        }

        let billQuantity = money / billValue

        money = money - (billValue * billQuantity)
        atmBills[billValue]! -= billQuantity

        for _ in 1...billQuantity {
            result.append(billValue)
        }

        if money == 0 {
            break
        }
    }

    print(result)
}


withdraw(quantity: 500)
withdraw(quantity: 75)
withdraw(quantity: 230)
