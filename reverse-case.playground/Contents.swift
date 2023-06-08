import Foundation

/*
    Challenge:

    Given a string, create a function to reverse the case.
    All lower-cased letters should be upper-cased, and vice versa.
*/

func reverseCase(_ text: String) {
    let reverse = text.map {
        let isUpperCase = String($0) == $0.uppercased()

        return isUpperCase ? $0.lowercased() : $0.uppercased()
    }

    print(reverse.joined())
}

reverseCase("Happy Birthday") // "hAPPY bIRTHDAY"
reverseCase("MANY THANKS") // "many thanks"
reverseCase("sPoNtAnEoUs") // "SpOnTaNeOuS"
