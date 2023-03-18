import Foundation

func isAnagram(_ initialWord: String, _ newWord: String) -> Bool {
    var wordOne = initialWord.lowercased()
    var wordTwo = newWord.lowercased()

    if wordOne == wordTwo {
        return false
    }

    return wordOne.sorted() == wordTwo.sorted()
}

let result = isAnagram("Dracula", "Alucard")

print(result)
