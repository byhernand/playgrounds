import Foundation


func sort(_ list: [Int], ascending: Bool) -> [Int] {
    var list = list
    var sortedList = [Int]()
    var largestNum = Int()

    for _ in list {
        list.forEach { num in
            if num > largestNum { largestNum = num }
        }

        sortedList.insert(largestNum, at: 0)
        list = list.filter { $0 < largestNum } // Removing largest number
        if !list.isEmpty { largestNum = list[0] }
    }

    return ascending ? sortedList : sortedList.reversed()
}


print(sort([9,31,8,106,7,207,15], ascending: true))
print(sort([9,31,8,106,7,207,15], ascending: false))
print(sort([-2,5,10,14,20,3,-8], ascending: true))
