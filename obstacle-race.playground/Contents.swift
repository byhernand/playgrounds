import Foundation


enum raceError: Error {
    case differentLengths
}


func race(athlete: [String], track: String) throws -> Bool {
    var raceResult = String()

    if athlete.count != track.count {
        throw raceError.differentLengths
    }

    for (idx, tackItem) in track.enumerated() {
        let niceRun = athlete[idx] == "run" && tackItem == "_"
        let niceJump = athlete[idx] == "jump" && tackItem == "|"

        if niceRun || niceJump  {
            raceResult += String(tackItem)
        } else {
            let badRun = "x", badJump = "/"
            raceResult += tackItem == "_" ? badRun : badJump
        }
    }

    print("Race result is \(raceResult)")
    return raceResult == track
}


do {
    print(try race(athlete: ["run", "jump", "run", "jump", "jump","run"], track: "_|_|_|"))
}
catch raceError.differentLengths {
    print("❌ Number of athlete movements and track items are different")
}
