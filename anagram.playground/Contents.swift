import Foundation

func isAnagram(initialWord: String, newWord: String) -> Bool {
    var wordOne = initialWord.lowercased()
    var wordTwo = newWord.lowercased()

    if wordOne == wordTwo {
        return false
    }

    // Checking for different characters
    return wordOne.sorted() != wordTwo.sorted() ? false : true
}

let result = isAnagram(initialWord: "Dracula", newWord: "Alucard")

print(result)
