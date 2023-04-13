import Foundation

/* Challenge: Find the second largest number in a list. */

func secondGreater(list: [Int]) -> Int? {
    let list = list.sorted(by: >)
    
    if !list.isEmpty {
        let differentNumbers = list.filter { $0 != list[0] }
        if differentNumbers.isEmpty {
            return nil // The list contains the same number repeated
        }
    }

    return list.count >= 2 ? list[1] : nil
}

print(secondGreater(list: [1,4,5,7,8,9])  ?? "There aren't number.")
print(secondGreater(list: [15,24,97,102,74])  ?? "There aren't number.")
print(secondGreater(list: [4,4]) ?? "There aren't number.")
print(secondGreater(list: [1]) ?? "There aren't number.")
