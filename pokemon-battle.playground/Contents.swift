import Foundation


enum PokemonType {
    case water, fire, plant, electric
}


// Helper
func calcEffectiveness(_ pokemonOne: PokemonType, _ pokemonTwo: PokemonType) -> (Float, String) {
    let high: (Float, String) = (2.0, "effective")
    let neutral: (Float, String) = (1.0, "neutral")
    let low: (Float, String) = (0.5, "not effective")

    switch pokemonOne {
        case .water:
            if pokemonTwo == .fire { return high }
            else if pokemonTwo == .electric { return neutral }
        case .fire:
            if pokemonTwo == .plant { return high }
            else if pokemonTwo == .electric { return neutral }
        case .plant:
            if pokemonTwo == .water { return high }
            else if pokemonTwo == .electric { return neutral }
        case .electric:
            if pokemonTwo == .water { return high }
            else if pokemonTwo == .fire { return neutral }
    }

    return low // Default case
}


// Main function
func calcDamage(attacker: PokemonType, defender: PokemonType, attack: Float, defense: Float) -> Float? {
    let validRange = 1...100

    if !validRange.contains(Int(attack)) || !validRange.contains(Int(defense)) {
        return nil // No valid numbers
    }

    let (effectiveness, attackStatus) = calcEffectiveness(attacker, defender)
    let damage = 50 * (attack / defense) * effectiveness
    
    print("The attack is \(attackStatus) ", terminator: "-> ")
    return round(damage)
}


print(calcDamage(attacker: .water, defender: .plant, attack: 100, defense: 100) ?? "Error!")
print(calcDamage(attacker: .fire, defender: .plant, attack: 30, defense: 80) ?? "Error!")
print(calcDamage(attacker: .plant, defender: .electric, attack: 45, defense: 75) ?? "Error!")
print(calcDamage(attacker: .electric, defender: .water, attack: 20, defense: 100) ?? "Error!")
print(calcDamage(attacker: .electric, defender: .water, attack: -20, defense: 110) ?? "Error!")
