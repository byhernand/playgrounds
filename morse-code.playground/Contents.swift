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
    var translatedWord = String()

    if phrase.contains(".") || phrase.contains("-") {
        var letters = phrase.split(separator: " ")

        for i in letters {
            if i == "/" {
                translatedWord += " "
            }
            if let letter = alphabet[String(i)] {
                translatedWord += "\(letter)"
            }
        }
    } else {
        for character in phrase.uppercased() {
            let ch = String(character)

            if ch == " " {
                translatedWord += " / "
                continue
            }

            if let letter = alphabet[ch] {
                translatedWord += "\(letter) "
            }
        }
    }
    
    return translatedWord
}


let result1 = translate(".... . .-.. .-.. ---  / .-- --- .-. .-.. -..")
let result2 = translate("Hello World")


print(result1)
print(result2)
