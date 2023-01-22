import Foundation

func reversedString(_ str: String) -> String {
    var letters = Array(str)
    var reversedLetters = [Character]()

    letters.forEach { letter in
        reversedLetters.insert(letter, at: 0)
    }

    return String(reversedLetters)
}

let result = reversedString("Dracula")

print(result)
