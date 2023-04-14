import Foundation


enum Animal: String, CaseIterable {
    case rat, ox, tiger, rabbit, dragon, snake,
         horse, sheep, monkey, rooster, dog, pig
}

enum Element: String, CaseIterable {
    case wood, fire, earth, metal, water
}


func chineseZodiacSign(_ year: Int) -> (String, String) {
    var animalsTable = [String]()
    var elementsTable = [String]()
    let currentCycle = 1984
    let nextCycle = 2044
    var sixtyYearsCycle = currentCycle

    if year > nextCycle {
        while year > (sixtyYearsCycle + 60) { sixtyYearsCycle += 60 }
    } else {
        while year < sixtyYearsCycle { sixtyYearsCycle -= 60 }
    }

    while animalsTable.count < 60 {
        for animal in Animal.allCases {
            animalsTable.append(animal.rawValue)
        }
    }

    while elementsTable.count < 60 {
        for element in Element.allCases {
            elementsTable.append(element.rawValue)
            elementsTable.append(element.rawValue)
        }
    }

    let position = year - sixtyYearsCycle

    return (elementsTable[position], animalsTable[position])
}


print(chineseZodiacSign(2023))
print(chineseZodiacSign(1924))
print(chineseZodiacSign(2000))
print(chineseZodiacSign(2050))
