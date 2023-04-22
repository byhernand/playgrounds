import Foundation


enum KindArmy: String {
    case harfoot
    case southener
    case dwarf
    case numenorean
    case elf
}


enum EvilArmy: String {
    case southener
    case orc
    case goblin
    case warg
    case troll
}


let attack = [
    "harfoot": 1,
    "dwarf": 3,
    "numenorean": 4,
    "elf": 5,
    "southener": 2,
    "orc": 2,
    "goblin": 2,
    "warg": 3,
    "troll": 5,
]


func battle(armyOne: [KindArmy], armyTwo: [EvilArmy]) -> String {
    if armyOne.isEmpty { return "❌ Kind army doesn't have soldiers" }
    if armyTwo.isEmpty { return "❌ Evil army doesn't have soldiers" }

    var armyOnePoints = Int()
    var armyTwoPoints = Int()

    armyOne.forEach { soldier in
        armyOnePoints += attack[soldier.rawValue]!
    }
    armyTwo.forEach { soldier in
        armyTwoPoints += attack[soldier.rawValue]!
    }

    if armyOnePoints == armyTwoPoints {
        return "It's a draw."
    }

    return armyOnePoints > armyTwoPoints ? "The Good Won." : "The Evil Won."
}


print(battle(armyOne: [.harfoot], armyTwo: [.orc]))
print(battle(armyOne: [.harfoot, .harfoot], armyTwo: [.orc]))
print(battle(armyOne: [.harfoot, .harfoot, .harfoot], armyTwo: [.orc]))
print(battle(armyOne: [.elf, .harfoot], armyTwo: [.troll]))
print(battle(armyOne: [.elf, .harfoot], armyTwo: [.troll, .orc]))
// print(battle(armyOne: [], armyTwo: [.trolls]))
