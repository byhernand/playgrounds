import Foundation

/*
    Challenge: Write a function that replaces all letters
               within a specified range with the hash symbol "#".
*/

func replace(_ text: String, range: String) -> String? {
    if range.count < 2 { return nil }

    let text = text.lowercased()
    let range = range.lowercased()
    let first = range[range.startIndex]
    let last = range[range.index(before: range.endIndex)]
    var word = String()

    for letter in text {
        if letter >= first && letter <= last {
            word += "#"
        } else {
            word += String(letter)
        }
    }

    return word
}

print(replace("abcdef", range: "c-e") ?? "Range Error")
print(replace("rattle", range: "r-z") ?? "Range Error")
print(replace("microscopic", range: "i-i") ?? "Range Error")
print(replace("Fvck", range: "u-v") ?? "Range Error")
print(replace("", range: "a-z") ?? "Range Error")
//print(replace("", range: "") ?? "Range Error")
