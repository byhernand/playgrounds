import Foundation

let numbers = [1,3,2,4,1,2,2,5,6,5,3]

func makeDictionary(fromList: [Int]) -> [Int : Int] {
    var theDictionary = [Int : Int]()

    for item in fromList.sorted() {
        if theDictionary[item] != nil {
            theDictionary[item]! += 1
        } else {
            theDictionary[item] = 1
        }
    }
    
    return theDictionary
}

let result = makeDictionary(fromList: numbers)

print(result)

