import UIKit

let nameList = ["Ed", "Carolina", "Juan", "Carlos", "Peter"]

func makeRandomList() {
    var nameListCopy = nameList
    var randomList = [String]()
    
    while(nameListCopy.count > 0) {
        var randomNum = Int.random(in: 0..<nameListCopy.count)
        var randomItem = nameListCopy.remove(at: randomNum)
        randomList.append(randomItem)
    }

    if randomList != nameList {
        print("Random List 📝")
        for idx in 0..<randomList.count {
            print("\(idx+1). \(randomList[idx])")
        }
    } else {
        print("Misma Lista")
        makeRandomList()
    }
}

makeRandomList()
