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
    var dotsDashes = phrase.split(separator: " ")
    var isMorseCode = alphabet[String(dotsDashes[0])] != nil

    if isMorseCode {
        for dotDash in dotsDashes {
            if dotDash == "/" {
                translatedPhrase += " "
                continue
            }
            if let letter = alphabet[String(dotDash)] {
                translatedPhrase += "\(letter)"
            }
        }
    } else {
        for character in phrase.uppercased() {
            let letter = String(character)

            if letter == " " {
                translatedPhrase += " / "
                continue
            }
            if let dotDash = alphabet[letter] {
                translatedPhrase += "\(dotDash) "
            }
        }
    }

    return translatedPhrase
}


let translation1 = translate(".... . .-.. .-.. ---  / .-- --- .-. .-.. -..")
let translation2 = translate("Hello World")


print(translation1)
print(translation2)
