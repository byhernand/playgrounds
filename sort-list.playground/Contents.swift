import Foundation


enum Arrenge {
    case ascending, descending
}


func sort(_ list: [Int], by sortBy: Arrenge) -> [Int] {
    var list = list
    var sortedList = [Int]()
    var largestNum = Int()

    for _ in list {
        list.forEach { num in
            if num > largestNum { largestNum = num }
        }

        list = list.filter { $0 < largestNum} // Removing largest number
        sortedList.insert(largestNum, at: sortedList.startIndex)
        largestNum = 0
    }

    return sortBy == .ascending ? sortedList : sortedList.reversed()
}


print(sort([9,31,8,106,7,207,15], by: .ascending))
print(sort([9,31,8,106,7,207,15], by: .descending))
