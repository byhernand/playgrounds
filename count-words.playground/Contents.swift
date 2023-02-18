import Foundation


func countWords(_ text: String) -> [String : Int] {
    var txt = text.capitalized
    var remove: Set<Character> = [".",",","?"]

    // Remove punctuation marks
    txt.removeAll(where: { remove.contains($0) })
    
    var wordList = txt.split(separator: " ")
    var wordDictionary = [String : Int]()
    
    for item in wordList {
        var word = String(item)

        if wordDictionary[word] != nil {
            wordDictionary[word]! += 1
        } else {
            wordDictionary[word] = 1
        }
    }

    return wordDictionary
}


let phrase = "Hi, my name is Eduardo. My full name is Eduardo Hernand. What is your name?"

for (key, value) in countWords(phrase) {
    print("\(key)(\(value)x)", terminator: "  ")
}
