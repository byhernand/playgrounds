import Foundation

func factorial(_ n: Int) -> Int {
    return n > 0 ? n * factorial(n - 1) : 1
}

print(factorial(3))
