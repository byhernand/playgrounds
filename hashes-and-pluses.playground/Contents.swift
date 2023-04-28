import Foundation

/*
    Challenge:

    Create a function that returns the number of hashes and pluses in a string.
    Return in the order of [hashes, pluses].
*/

func hashPlusCount(_ text: String) -> [Int] {
    let hashes = text.filter { $0 == "#" }
    let pluses = text.filter { $0 == "+" }

    return [hashes.count, pluses.count]
}

print(hashPlusCount("###+"))
print(hashPlusCount("##+++#"))
print(hashPlusCount("#+++#+#++#"))
print(hashPlusCount("F#ck!"))
print(hashPlusCount(""))
