import Foundation


enum Gravity: Float {
       case Mercury = 3.70
       case Venus = 8.87
       case Earth = 9.80
       case Mars = 3.72
       case Jupiter = 24.79
       case Saturn = 10.44
       case Neptune = 11.15
}


func calcWeight(weight: Float, planet anotherPlanet: Gravity) -> String {
    let calc = weight * anotherPlanet.rawValue / Gravity.Earth.rawValue
    let result = round(calc * 100) / 100.0 // Rounding to 2 digits

    return "🚀 Your weight in \(anotherPlanet) is \(result) kg."
}


print(calcWeight(weight: 55, planet: .Jupiter))
print(calcWeight(weight: 55, planet: .Mercury))
print(calcWeight(weight: 55, planet: .Neptune))
