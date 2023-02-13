import Foundation


func isBalanced(expression: String) -> Bool {
    var numOfLeftBraces = 0
    var numOfRightBraces = 0

    var numOfLeftBrackets = 0
    var numOfRightBrackets = 0

    var numOfLeftParenthesis = 0
    var numOfRightParenthesis = 0
    
    for symbol in expression {
        switch symbol {
            case "{":
                numOfLeftBraces += 1
            case "}":
                numOfRightBraces += 1
                if numOfLeftBraces == 0 && numOfRightBraces == 1 {
                    return false
                }
            case "[":
                numOfLeftBrackets += 1
            case "]":
                numOfRightBrackets += 1
                if numOfLeftBrackets == 0 && numOfRightBrackets == 1 {
                    return false
                }
            case "(":
                numOfLeftParenthesis += 1
            case ")":
                numOfRightParenthesis += 1
                if numOfLeftParenthesis == 0 && numOfRightParenthesis == 1 {
                    return false
                }
            default:
                break
        }
    }

    if numOfLeftBraces != numOfRightBraces {
        return false
    }
    if numOfLeftBrackets != numOfRightBrackets {
        return false
    }
    if numOfLeftParenthesis != numOfRightParenthesis {
        return false
    }
    
    return true
}


print(isBalanced(expression: "{a + b [c] * (2x2)}}}}"))
print(isBalanced(expression: "{ [ a * ( c + d ) ] - 5 }"))
print(isBalanced(expression: "{ a * ( c + d ) ] - 5 }"))
print(isBalanced(expression: "{a^4 + (((ax4)}"))
print(isBalanced(expression: "{ ] a * ( c + d ) + ( 2 - 3 )[ - 5 }"))
print(isBalanced(expression: "{{{{{{(}}}}}}"))
print(isBalanced(expression: "(a"))
