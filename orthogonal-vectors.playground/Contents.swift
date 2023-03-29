import Foundation


enum VectorError: Error {
    case differentLength
}


func areOrthogonal(vectorOne: [Int], vectorTwo: [Int]) throws -> Bool {
    if vectorOne.count != vectorTwo.count {
        throw VectorError.differentLength
    }

    var result = 0

    for (idx, _) in vectorOne.enumerated() {
        result += vectorOne[idx] * vectorTwo[idx]
    }

    return result == 0
}


do {
    try print(areOrthogonal(vectorOne: [1,-3], vectorTwo: [-2,4]))
    try print(areOrthogonal(vectorOne: [4,-2,1], vectorTwo: [1,2,0]))
} catch {
    print("❌ Vectors have different length.")
}
