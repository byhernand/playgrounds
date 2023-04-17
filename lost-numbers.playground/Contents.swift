import Foundation


enum ListError: Error {
    case notEnoughItems, duplicateItems
}


func lostNumbers(from list: [Int]) throws -> [Int] {
    let list = list.sorted(by: <)

    // Checking errors
    if list.count <= 1 {
        throw ListError.notEnoughItems
    }

    var lastNum = Int()

    for num in list {
        if num == lastNum { throw ListError.duplicateItems }

        lastNum = num
    }

    // Finding lost numbers
    let first = list.first!
    let last = list.last!
    var lost = [Int]()

    for num in first...last {
        if list.contains(num) { continue }

        lost.append(num)
    }

    return lost
}


do {
    try print(lostNumbers(from: [3, 5, 7, 10, 12, 14]))
    try print(lostNumbers(from: [16, 18, 20, 22, 23, 25]))
    try print(lostNumbers(from: [51, 54, 57, 60, 62, 63]))
    // try print(lostNumbers(from: [7]))
    // try print(lostNumbers(from: [20, 20]))
}
catch ListError.duplicateItems {
    print("The list contains duplicate numbers.")
}
catch ListError.notEnoughItems {
    print("There are not enough numbers.")
}

