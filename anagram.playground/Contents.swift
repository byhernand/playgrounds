import UIKit

func isAnagram(word1: String, word2: String) -> Bool {
    var initialWord = word1.lowercased()
    var newWord = word2.lowercased()
    
    if initialWord == newWord {
        return false
    }

    if initialWord.count != newWord.count {
        return false
    }
    
    let wordOne = Array(initialWord).sorted()
    let wordTwo = Array(newWord).sorted()
    
    if wordOne == wordTwo {
        return true
    } else {
        return false
    }
}

let result = isAnagram(word1: "Dracula", word2: "Alucard")
print(result)
