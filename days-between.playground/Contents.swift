import Foundation


typealias Str = String
typealias DateTuple = (day: Int, month: Int, year: Int)


/* Helpers */
func makeInt(_ subStr: Substring) -> Int {
    if let num = Int(subStr) {
        return num
    }

    return -1
}

func positiveNum(_ calc: Int) -> Int {
    return calc < 0 ? -calc : calc
}


/* Main function */
func daysBetween(date1: Str, date2: Str) -> Int {
    let arr1 = date1.split(separator: "/")
    let arr2 = date2.split(separator: "/")

    let dateOne: DateTuple = (
        day: makeInt(arr1[0]),
        month: makeInt(arr1[1]),
        year: makeInt(arr1[2])
    )

    let dateTwo: DateTuple = (
        day: makeInt(arr2[0]),
        month: makeInt(arr2[1]),
        year: makeInt(arr2[2])
    )

    var daysCalc = positiveNum(dateOne.day - dateTwo.day)
    var monthsCalc = positiveNum(30 * (dateOne.month - dateTwo.month))
    var yearsCalc = positiveNum(365 * (dateOne.year - dateTwo.year))

    return daysCalc + monthsCalc + yearsCalc
}


let firstDate = "25/09/2000"
let secondDate = "20/02/2022"
let countDays = daysBetween(date1: firstDate, date2: secondDate)


print("There are \(countDays) days between \(firstDate) and \(secondDate)")

