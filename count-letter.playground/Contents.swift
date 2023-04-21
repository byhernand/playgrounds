import Foundation


func letterCounter(_ arr: [[String]], search letter: String) {
    let letter = letter.uppercased()
    var rows = [Int: Int]()
    var counter = Int()

    for (idx, list) in arr.enumerated() {
        let matches = list.filter{ $0.uppercased() == letter }
        let rowKey = idx + 1

        if !matches.isEmpty {
            rows[rowKey] = matches.count
            counter += matches.count
        }
    }

    print("\"\(letter)\" shows up \(counter) times.", terminator: "\n\n")

    for (row, times) in rows.sorted(by: <) {
        print("・\(times)x in row number \(row)")
    }
}


letterCounter([
  ["D", "E", "Y", "H", "A", "D"],
  ["C", "B", "Z", "Y", "J", "K"],
  ["D", "B", "C", "A", "M", "N"],
  ["F", "G", "G", "R", "S", "R"],
  ["V", "X", "H", "A", "S", "S"]
], search: "D")
