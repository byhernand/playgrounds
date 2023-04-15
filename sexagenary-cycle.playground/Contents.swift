import Foundation


func chineseZodiacSign(year: Int) -> String {
    let animals = ["rat", "ox", "tiger", "rabbit", "dragon", "snake", "horse", "sheep", "monkey", "rooster", "dog", "pig"]
    let elements = ["wood", "fire", "earth", "metal", "water"]

    if year < 604 {
        return "The sexagenary cycle started in the year 604."
    }

    let sexagenaryYear = (year - 4) % 60
    let element = elements[(sexagenaryYear % 10) / 2]
    let animal = animals[sexagenaryYear % 12]

    return "\(year): \(element) \(animal)"
}


print(chineseZodiacSign(year: 2023))
print(chineseZodiacSign(year: 1924))
print(chineseZodiacSign(year: 2000))
print(chineseZodiacSign(year: 2050))
print(chineseZodiacSign(year: 2096))
