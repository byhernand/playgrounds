import Foundation


func drawFrame(text: String) {
    let words = text.components(separatedBy: " ")
    let topAndBottomBorder : String
    var longestWord = Int()

    words.forEach { word in
        if word.count > longestWord {
            longestWord = word.count
        }
    }

    topAndBottomBorder = String(repeating: "*", count: longestWord + 4)

    print(topAndBottomBorder)

    words.forEach { word in
        let whiteSpacePadding = String(repeating: " ", count: longestWord - word.count)
        print("* \(word)\(whiteSpacePadding) *")
    }

    print(topAndBottomBorder, terminator: "\n\n")
}


drawFrame(text: "If you can't explain it simply, you don't understand it well enough.")
drawFrame(text: "The end justifies the means.")
drawFrame(text: "The quick brown fox jumps over the lazy dog.")
