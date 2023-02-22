import Foundation


let alphabet : [String: String] = [
    "A":".-",
    ".-":"A",
    "B":"-...",
    "-...":"B",
    "C":"-.-.",
    "-.-.":"C",
    "D":"-..",
    "-..":"D",
    "E":".",
    ".":"E",
    "F":"..-.",
    "..-.":"F",
    "G":"--.",
    "--.":"G",
    "H":"....",
    "....":"H",
    "I":"..",
    "..":"I",
    "J":".---",
    ".---":"J",
    "K":"-.-",
    "-.-":"K",
    "L":".-..",
    ".-..":"L",
    "M":"--",
    "--":"M",
    "N":"-.",
    "-.":"N",
    "O":"---",
    "---":"O",
    "P":".--.",
    ".--.":"P",
    "Q":"--.-",
    "--.-":"Q",
    "R":".-.",
    ".-.":"R",
    "S":"...",
    "...":"S",
    "T":"-",
    "-":"T",
    "U":"..-",
    "..-":"U",
    "V":"...-",
    "...-":"V",
    "W":".--",
    ".--":"W",
    "X":"-..-",
    "-..-":"X",
    "Y":"-.--",
    "-.--":"Y",
    "Z":"--..",
    "--..":"Z"
]


func translate(_ phrase: String) -> String {
    var translatedPhrase = String()
    let morseSymbols = phrase.split(separator: " ")
    let isMorseCode = alphabet[String(morseSymbols[0])] != nil

    if isMorseCode {
        for morseSymbol in morseSymbols {
            if morseSymbol == "/" {
                translatedPhrase += " "
                continue
            }
            if let letter = alphabet[String(morseSymbol)] {
                translatedPhrase += "\(letter)"
            }
        }
    } else {
        for char in phrase.uppercased() {
            let letter = String(char)

            if letter == " " {
                translatedPhrase += " / "
                continue
            }
            if let morseSymbol = alphabet[letter] {
                translatedPhrase += "\(morseSymbol) "
            }
        }
    }

    return translatedPhrase
}


let translation1 = translate(".... . .-.. .-.. ---  / .-- --- .-. .-.. -..")
let translation2 = translate("Hello World")


print(translation1)
print(translation2)
