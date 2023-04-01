import Foundation


enum Product: Int {
    case coke = 20
    case pepsi = 15
    case snack = 10
    case mints = 200
}


func dispense(_ option: Product, money: [Int]) -> (String, [Int]) {
    let supportedCoins = [200, 100, 50, 10, 5]
    var productPrice = option.rawValue
    var change = [Int]()

    for coin in money.sorted() {
        if !supportedCoins.contains(coin) {
            return ("❌ Not supported coin", money)
        }
        if productPrice == 0 {
            change.append(coin)
            continue
        }
        productPrice -= coin
    }

    if productPrice > 0 {
        return ("❌ Not enough money", money)
    } else {
        return ("✅ \(option)", change)
    }
}


print(dispense(.coke, money: [5, 5, 10]))
print(dispense(.pepsi, money: [5, 5]))
print(dispense(.snack, money: [5, 50, 10, 5]))
print(dispense(.mints, money: [400, 300]))
