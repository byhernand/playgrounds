import Foundation


func leapYears(after year: Int) {
    let currentYear = year
    var year = year

    func isLeapYear() -> Bool {
        let isSecular = year % 100 == 0
        return isSecular && year % 400 == 0 || !isSecular && year % 4 == 0
    }

    if isLeapYear() {
        year += 4
    } else if !isLeapYear() && year < 0 { // Negative year
        year -= year % 4
    } else if !isLeapYear() {
        year += 4 - (year % 4)
    }

    for n in 1...30 {
        while !isLeapYear()  {
            year += 4 - (year % 4)
        }

        print("#\(n): \(year)")
        year += 4
    }
}


leapYears(after: 2023)
