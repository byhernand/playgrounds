import Foundation


enum KindSoldier: String {
    case harfoot, southener, dwarf, numenorean, elf
    
    var bravery: Int {
        switch self {
        case .harfoot:
            return 1
        case .southener:
            return 2
        case .dwarf:
            return 3
        case .numenorean:
            return 4
        case .elf:
            return 5
        }
    }
}

enum EvilSoldier: String {
    case southener, orc, goblin, warg, troll

    var bravery: Int {
        switch self {
        case .southener, .orc, .goblin:
            return 2
        case .warg:
            return 3
        case .troll:
            return 5
        }
    }
}

enum ArmyError: Error {
    case noKindArmy, noEvilArmy
}


func battle(kindArmy: [(KindSoldier, Int)], evilArmy: [(EvilSoldier, Int)]) throws {
    if kindArmy.isEmpty { throw ArmyError.noKindArmy }
    if evilArmy.isEmpty { throw ArmyError.noEvilArmy }

    var kindArmyPoints = Int()
    var evilArmyPoints = Int()

    kindArmy.forEach { soldier, quantity in
        kindArmyPoints += soldier.bravery * quantity
    }
    evilArmy.forEach { soldier, quantity in
        evilArmyPoints += soldier.bravery * quantity
    }

    if kindArmyPoints == evilArmyPoints {
        print("It's a draw.")
    } else {
        print(kindArmyPoints > evilArmyPoints ? "The Good Won." : "The Evil Won.")
    }
}


do {
    try battle(kindArmy: [(.harfoot, 1)], evilArmy: [(.orc, 1)])
    try battle(kindArmy: [(.harfoot, 2)], evilArmy: [(.orc, 1)])
    try battle(kindArmy: [(.harfoot, 3)], evilArmy: [(.orc, 1)])
    try battle(kindArmy: [(.elf, 1), (.harfoot, 1)], evilArmy: [(.troll, 1)])
    try battle(kindArmy: [(.elf, 1), (.harfoot, 1)], evilArmy: [(.troll, 1), (.orc, 1)])
}
catch ArmyError.noKindArmy {
    print("❌ Kind army doesn't have soldiers")
}
catch ArmyError.noEvilArmy {
    print("❌ Evil army doesn't have soldiers")
}
