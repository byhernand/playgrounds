import Foundation

let character: Character = "p"

switch character.lowercased() {
    case "1","2","3","4","5","6","7","8","9","0":
        print("It's a number.")
    case "a","e","i","o","u":
        print("It's a vowel.")
    case "b","c","d","f","g","h","j",
         "k","l","m","n","p","q","r",
         "s","t","v","w","x","y","z":
        print("It's a consonant.")
    default:
        print("It's a punctuation mark.")
}
