import Foundation


/*
    Challenge:

    You must generate your own function to satisfy the relationship between the inputs and outputs.
 
    [5, 7, 8, 2, 1], 2 ➞ [1, 1, 0, 0, 1]
    [9, 8, 16, 47], 4 ➞ [1, 0, 0, 3]
    [17, 11, 99, 55, 23, 1], 5 ➞ [2, 1, 4, 0, 3, 1]
    [6, 1], 7 ➞ [6, 1]
    [3, 2, 9], 3 ➞ [0, 2, 0]
    [48, 22, 0, 19, 33, 100], 10 ➞ [8, 2, 0, 9, 3, 0]
*/


func getRemainders(_ numbers: [Int], _ divisor: Int) {
    var remainders = numbers.map { $0 % divisor }
    print(remainders)
}

getRemainders([5, 7, 8, 2, 1], 2)
getRemainders([9, 8, 16, 47], 4)
getRemainders([17, 11, 99, 55, 23, 1], 5)
getRemainders([6, 1], 7)
getRemainders([3, 2, 9], 3)
getRemainders([48, 22, 0, 19, 33, 100], 10)
