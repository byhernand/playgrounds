import Foundation


enum Language {
    case english, spanish, portuguese
}


struct Greeting {
    var name: String
    var lastName: String?
    var isFemale: Bool
    var language: Language
    var greet: String {
        switch language {
        case .english:
            return "Hello \(isFemale ? "mrs." : "mr.") \(lastName != nil ? lastName! : name)."
        case .spanish:
            return "Hola \(isFemale ? "doña" : "don") \(name)."
        case .portuguese:
            return "Olá \(isFemale ? "senhora" : "senhor") \(name)."
        }
    }
}


let personOne = Greeting(name: "Eduardo", isFemale: false, language: .portuguese)
let personTwo = Greeting(name: "Alice", lastName: "Smith", isFemale: true, language: .english)
let personThree = Greeting(name: "Bryant", lastName: "Gates", isFemale: false, language: .spanish)


print(personOne.greet)
print(personTwo.greet)
print(personThree.greet)

