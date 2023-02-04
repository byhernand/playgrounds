import Foundation

func ageToDays(age: Float) -> Float {
    let calc = age * 365 / 1
    return calc
}

print("👁️ You've living for about \(ageToDays(age: 22)) days")
