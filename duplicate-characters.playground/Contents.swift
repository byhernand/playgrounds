import Foundation

/*
    Challenge:

    Create a function that takes a string and returns the
    number of alphanumeric characters that occur more than once.

    Duplicate characters are case sensitive.
*/


func duplicateCount(_ text: String) -> Int? {

    for char in text {
        let isAlphabetical = char >= "A" && char <= "Z" || char >= "a" && char <= "z"
        let isNumerical = char >= "0" && char <= "9"
        let isAlphanumeric = isAlphabetical || isNumerical

        if !isAlphanumeric {
            return nil
        }
    }

    var letters : [Character: Int] = [:]

    text.forEach { character in
        if letters[character] != nil {
            letters[character]! += 1
        } else {
            letters[character] = 1
        }
    }

    let duplicates = letters.filter { $0.value > 1 }

    return duplicates.count
}


print(duplicateCount("abcde") ?? "Error!")
print(duplicateCount("aabbcde") ?? "Error!")
print(duplicateCount("Indivisibilities") ?? "Error!")
print(duplicateCount("Aa") ?? "Error!")
print(duplicateCount("babylon") ?? "Error!")
//print(duplicateCount("r$tuvwxyz") ?? "Error!")
