import Foundation

/* Challenge: Find the second largest number in a list. */

func secondGreater(list: [Int]) -> Int? {
    let numbers = list.sorted(by: >)
    var mySet : Set<Int> = []

    for num in numbers {
        if mySet.contains(num) {
            return nil // The list has duplicate numbers
        } else {
            mySet.insert(num)
        }
    }

    return numbers.count >= 2 ? numbers[1] : nil
}

print(secondGreater(list: [1,4,5,7,8,9])  ?? "There isn't a number.")
print(secondGreater(list: [15,24,97,102,74])  ?? "There isn't a number.")
print(secondGreater(list: [4,4]) ?? "There isn't a number.")
print(secondGreater(list: [1]) ?? "There isn't a number.")
