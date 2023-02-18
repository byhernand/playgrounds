import Foundation


let gravity: [String : Float] = [
    "mercury": 3.70,
    "venus": 8.87,
    "earth": 9.80,
    "mars": 3.72,
    "jupiter": 24.79,
    "saturn": 10.44,
    "neptune": 11.15
]


func calcWeight(weight: Float, planet: String) -> String {
    if let anotherGravity = gravity[planet.lowercased()] {
        let calc = weight * anotherGravity / gravity["earth"]!
        let result = round(calc * 100) / 100.0 // Rounding 2 digits

        return "🚀 Your weight in \(planet.capitalized) is \(result) kg."
    } else {
        return "❌ Wrong choice, \"\(planet)\" doesn't exists."
    }
}


print(calcWeight(weight: 55, planet: "jupiter"))
