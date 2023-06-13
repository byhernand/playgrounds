import Foundation


/*
    Challenge:
 
    Create a function that takes an array of non-negative integers and
    strings and return a new array without the strings.
*/


func filterArray(_ list: [Any]) {
    let integersList = list.filter {
        let item = type(of: $0)
        let isInt = type(of: item) == Int.Type.self
        return isInt
    }

    var filteredList = [Int]()

    integersList.forEach {
        if let integer = Int("\($0)") {
            if !filteredList.contains(integer) {
                filteredList.insert(integer, at: filteredList.endIndex)
            }
        }
    }

    print(filteredList)
}


filterArray([1, 2, "a", "b"])
filterArray([1, 2, 2, 3, "a", "b"])
filterArray([1, "a", "b", 0, 15])
filterArray([1, 2, "aasf", "1", "123", 123])
