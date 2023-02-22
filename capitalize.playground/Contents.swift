import Foundation


let capitalLetters: [Character: Character] = [
    "a":"A", "b":"B", "c":"C", "d":"D", "e":"E",
    "f":"F", "g":"G", "h":"H", "i":"I", "j":"J",
    "k":"K", "l":"L", "m":"M", "n":"N", "o":"O",
    "p":"P", "q":"Q", "r":"R", "s":"S", "t":"T",
    "u":"U", "v":"V", "w":"W", "x":"X", "y":"Y",
    "z":"Z",
]


func capitalize(text: String) -> String {
    let words = text.split(separator: " ")
    var capitalizedText = String()

    for item in words {
        var word = String(item)
        let firstLetter = word.remove(at: word.startIndex)

        if let capitalLetter = capitalLetters[firstLetter] {
            capitalizedText += "\(capitalLetter)\(word) "
        } else {
            capitalizedText += "\(firstLetter)\(word) "
        }
    }

    return capitalizedText
}


print(capitalize(text: "Annie, are you okay? So, Annie, are you okay?"))
