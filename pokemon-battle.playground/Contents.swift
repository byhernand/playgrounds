import Foundation


enum PokemonType {
    case water, fire, plant, electric
}


// Helper
func calcEffectiveness(_ pokemonOne: PokemonType, _ pokemonTwo: PokemonType) -> Float {
    let high: Float = 2.0
    let neutral: Float = 1.0
    let low: Float = 0.5

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
func calcDamage(_ attacker: (PokemonType, attack: Float), vs defender: (PokemonType, defense: Float)) -> Float? {
    let (attacker, attack) = attacker
    let (defender, defense) = defender
    let validRange = 1...100

    if !validRange.contains(Int(attack)) || !validRange.contains(Int(defense)) {
        return nil // No valid range
    }

    let effectiveness = calcEffectiveness(attacker, defender)
    let damage = 50 * (attack / defense) * effectiveness
    
    return damage
}


print(calcDamage((.water, attack: 100), vs: (.fire, defense: 100)) ?? "Error")
print(calcDamage((.water, attack: 80), vs: (.water, defense: 95)) ?? "Error")
print(calcDamage((.plant, attack: 2), vs: (.electric, defense: 5)) ?? "Error")
print(calcDamage((.electric, attack: 50), vs: (.fire, defense: 100)) ?? "Error")
print(calcDamage((.fire, attack: 25), vs: (.plant, defense: 30)) ?? "Error")
