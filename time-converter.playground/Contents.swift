import Foundation


/* Helpers */
func printMillis(_ milliseconds: Int) {
    var millisStr: String! = String(milliseconds)

    if millisStr != nil {
        var numbersInStr = millisStr.split(separator: "")
        var result = ""

        for (idx, num) in numbersInStr.reversed().enumerated() {
            let isCommaTurn = (idx + 1) % 3 == 0 && (idx + 1) < numbersInStr.count
            if isCommaTurn  {
                result += "\(num),"
            } else {
                result += num
            }
        }

        print(String(result.reversed()))
    }
}


/* Main function */
func convertToMillis(days: Int = 0, hours: Int = 0, minutes: Int = 0, seconds: Int = 0) -> Int {
    let daysInMillis = days * 24 * 60 * 60 * 1000
    let hoursInMillis = hours * 60 * 60 * 1000
    let minutesInMillis = minutes * 60 * 1000
    let secondsInMillis = seconds * 1000
    let totalInMillis = daysInMillis + hoursInMillis + minutesInMillis + secondsInMillis

    printMillis(totalInMillis)
    return totalInMillis
}


convertToMillis(days: 2, hours: 1, minutes: 20, seconds: 100)
convertToMillis(days: 1, minutes: 400)
convertToMillis(days: 5, minutes: 400, seconds: 35)
convertToMillis(hours: 3)
