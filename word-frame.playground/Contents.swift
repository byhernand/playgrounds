import Foundation


func drawFrame(text: String) {
    var words = text.components(separatedBy: " ")
    var longestWord = String()
    var topAndBottomFrame = String()

    words.forEach {
        if $0.count > longestWord.count { longestWord = $0 }
    }

    for (idx, _) in words.enumerated() {
        for _ in longestWord {
            if topAndBottomFrame.count < longestWord.count {
                topAndBottomFrame.append("*")
            }

            // Adding white space padding
            if words[idx].count < longestWord.count {
                words[idx].append(" ")
            } else { break }
        }
    }

    print("**\(topAndBottomFrame)**")
    words.forEach { print("* \($0) *") }
    print("**\(topAndBottomFrame)**", terminator: "\n\n")
}


drawFrame(text: "If you can't explain it simply, you don't understand it well enough.")
drawFrame(text: "The end justifies the means.")
drawFrame(text: "The quick brown fox jumps over the lazy dog.")
