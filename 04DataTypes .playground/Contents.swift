import UIKit

let orangesAreOrange: Bool = true
let foodIsDelicious: Bool = false

var isAged: Bool
isAged = true

if isAged {
    print("You can join to the party")
} else {
    print("You can't join to the party")
}

var age = 31
if age >= 18 {
    print("You can join to the party")
}


// MARK: Tuple
let http404Error = (404, "Not Found")
print("Status code: \(http404Error.0)")
print("Message: \(http404Error.1)")

let (statusCode, statusMessage) = http404Error
print("Status code: \(statusCode)")
print("Message: \(statusMessage)")

let (justStatusCode, _) = http404Error
print("Status code: \(justStatusCode)")

let http200Status = (code: 200, message: "OK")
print("Status code: \(http200Status.code)")
print("Message: \(http200Status.message)")


let me = (name: "Uriel", lastName: "Olascoaga", age: 26)
print("Hello, my name is \(me.name) \(me.lastName), and I'm \(me.age) years old")

let possibleAge = "26"
let convertedAge = Int(possibleAge) // Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?
surveyAnswer = "42"

if convertedAge != nil {
    print("User's age isn't nil: \(convertedAge!)")
} else {
    print("User's age is nil")
}

if let surveyAnswer = surveyAnswer {
    // surveyAnswer isn't nil
    print("surveyAnswer string is: \(surveyAnswer)")
} else {
    // surveyAnswer is nil
    print("surveyAnswer string is nil")
}

if let firstNumber = Int("4"),
   let secondNumber = Int("pepe"),
   firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

let possibleString: String? = "This is an optional String"
let forcedString: String = possibleString!

let assummedString: String! = "This is an implicit unwrapped optional String"
let implicitString: String = assummedString

if let assummedString = assummedString {
    print(assummedString)
}

print(assummedString)
