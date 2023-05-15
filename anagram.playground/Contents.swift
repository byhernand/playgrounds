import Foundation


func isAnagram(_ initialWord: String, _ newWord: String) -> Bool {
    let wordOne = initialWord.lowercased()
    let wordTwo = newWord.lowercased()

    if wordOne == wordTwo {
        return false
    }

    return wordOne.sorted() == wordTwo.sorted()
}


print(isAnagram("Dracula", "Alucard"))
print(isAnagram("listen", "silent"))
print(isAnagram("bake", "break"))
