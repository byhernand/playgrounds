import Foundation


enum NumberError: Error {
    case notEnoughElements, duplicate
}


func lostNumbers(from list: [Int]) throws -> [Int] {
    let list = list.sorted(by: <)

    if list.count <= 2 {
        throw NumberError.notEnoughElements
    }

    var lastNum = Int()

    for num in list {
        if num == lastNum { throw NumberError.duplicate }

        lastNum = num
    }

    var missing = [Int]()
    
    if let first = list.first, let last = list.last {
        for num in first...last {
            if list.contains(num) { continue }

            missing.append(num)
        }
    }

    return missing
}

do {
    try print(lostNumbers(from: [10, 18, 14]))
} catch NumberError.duplicate {
    print("The list contains duplicate numbers.")
} catch NumberError.notEnoughElements {
    print("There are not enough elements.")
}

