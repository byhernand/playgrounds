import Foundation

func findDifferentCharacters(_ string1: String, _ string2: String) {
    var out1 = ""
    var out2 = ""

    for str1Character in string1 {
        if string2.contains(str1Character) {
            continue
        } else {
            out1 += "\(str1Character)"
        }
    }

    for str2Character in string2 {
        if string1.contains(str2Character) {
            continue
        } else {
            out2 += "\(str2Character)"
        }
    }

    print(out1)
    print(out2)
}

let phrase1 = "Hello world"
let phrase2 = "Hola mundo"

findDifferentCharacters(phrase1, phrase2)
