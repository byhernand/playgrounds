import Foundation

/*
    Challenge:

    Create a function that takes a variable number of arguments, each argument representing
    the number of items in a group.

    The function should return the number of permutations (combinations) of choices
    you would have if you selected one item from each group.
*/


func combinations(_ list: Int...) {
    var result = 1
    list.forEach { result *= $0 }

    if list.isEmpty {
        print(0)
    } else {
        print(result)
    }
}


combinations(2, 3)
combinations(3, 7, 4)
combinations(2, 3, 4, 5)
combinations()
