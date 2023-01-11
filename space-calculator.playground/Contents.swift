import UIKit


let gravity = (
    mercury: 3.70,
    venus: 8.87,
    earth: 9.80,
    mars: 3.72,
    jupiter: 24.79,
    saturn: 10.44,
    neptune: 11.15
)


func message(planet: String, value: Double) -> String {
    let finalCalc = round(value * 100) / 100.0
    return "Your weight in \"\(planet)\" is \(finalCalc)kg."
}


func calcWeight(weight: Double, option: Double) -> String {
    var initialCalc : Double

    switch option {
    case 1:
        initialCalc = weight * gravity.mercury / gravity.earth
        return message(planet: "Mercury", value: initialCalc)
    case 2:
        initialCalc = weight * gravity.venus / gravity.earth
        return message(planet: "Venus", value: initialCalc)
    case 3:
        initialCalc = weight * gravity.mars / gravity.earth
        return message(planet: "Mars", value: initialCalc)
    case 4:
        initialCalc = weight * gravity.jupiter / gravity.earth
        return message(planet: "Jupiter", value: initialCalc)
    case 5:
        initialCalc = weight * gravity.saturn / gravity.earth
        return message(planet: "Saturn", value: initialCalc)
    case 6:
        initialCalc = weight * gravity.neptune / gravity.earth
        return message(planet: "Neptune", value: initialCalc)
    default:
        return "Wrong option! Try again"
    }
}


print("""
🚀 Choose a planet:

1 → Mercury | 4 → Jupiter
2 → Venus   | 5 → Saturn
3 → Mars    | 6 → Neptune

\(calcWeight(weight: 55, option: 1))
""")
