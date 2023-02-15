import Foundation

func isPalindrome(phrase: String) -> Bool {
    let removeCharacters: Set<Character> = [" ",".","?","!","'",",",":",";"]

    var text = phrase.lowercased()
    text.removeAll(where: { removeCharacters.contains($0) } )
    let reverseText = String(text.reversed())

    return text == reverseText ? true : false
}

print(isPalindrome(phrase: "Won't lovers revolt now?"))
