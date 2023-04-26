import Foundation

/*
    Challenge:

    Create a function that takes a string of words and moves the first letter of each word to the end of it,
    then adds 'ay' to the end of the word. This is called "Pig Latin".

    • Move the first letter of each word to the end of the word.
    • Add "ay" to the end of the word.
    • Words starting with a vowel (A, E, I, O, U) simply have "WAY" appended to the end.
*/


func pigLatin(_ text: String) {
    let vowels: [Character] = ["a","e","i","o","u"]
    let consonants: [Character] = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
    var words = text.lowercased().split(separator: " ")
    var newText = String()

    words.forEach {
        var word = $0
        var hasSymbol = false
        let firstLetter = word[word.startIndex]

        for letter in word {
            if !vowels.contains(letter) && !consonants.contains(letter) {
                hasSymbol = true
                break
            }
        }

        if vowels.contains(firstLetter) {
            let order = hasSymbol ? word.index(before: word.endIndex) : word.endIndex
            word.insert(contentsOf: "way", at: order)
        } else {
            let first = word.remove(at: word.startIndex)
            let order = hasSymbol ? word.index(before: word.endIndex) : word.endIndex

            word.insert(contentsOf: "\(first)ay", at: order)
        }

        newText += newText.isEmpty ? "\(word.capitalized) " : "\(word) "
    }
    
    newText.remove(at: newText.index(before: newText.endIndex))
    print(newText)
}


pigLatin("Cats are great pets.")
pigLatin("Tom got a small piece of pie.")
pigLatin("He told us a very exciting tale.")
pigLatin("The rose is red, the violet is blue.")
pigLatin("The only thing we have to fear is fear itself.")
