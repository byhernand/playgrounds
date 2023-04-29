import Foundation

/*
    Challenge:

    Create a function that takes a string of words (or just one word)
    and converts each word from lower camelCase to snake_case.
*/


func camelToSnake(_ text: String) {
    let lowerCamelCase = text.split(separator: " ").map {
        var word = $0
        let firstLetter = word.removeFirst()
        word.insert(contentsOf: firstLetter.lowercased(), at: word.startIndex)

        return word
    }

    let camelCase = lowerCamelCase.joined(separator: " ")

    let snakeCase = camelCase.map {
        let isCapital = $0 >= "A" && $0 <= "Z"
        return isCapital ? "_\($0.lowercased())" : String($0)
    }

    print(snakeCase.joined())
}


camelToSnake("magicCarrots") // "magic_carrots"
camelToSnake("greatApples for aSmellyRhino") // "great_apples for a_smelly_rhino"
camelToSnake("GreatApples For ASmellyRhino") // "great_apples for a_smelly_rhino"
camelToSnake("thatsGreat") // "thats_great"
