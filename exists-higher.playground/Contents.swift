import Foundation

func existsHigher(num: Int, list: [Int]) -> Bool {
    for item in list {
        if item > num { return true }
    }

    return false
}

let result = existsHigher(num: 5, list: [1,2,5,7])

print(result)
