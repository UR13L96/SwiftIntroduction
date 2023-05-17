import UIKit

let string = "This a string"

let multilineString = """
Hi, I'm Uriel\
 We are studying Swift's course
Greetings
"""

print(multilineString)

let wiseWords = "\"Life is like riding a bicycle. To keep your balance, you must keep moving.\" - Albert Einstein"
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Empty string")
} else {
    print("String has value")
}

var someString = "A horse"
someString += " and carriage"
someString += " and soldier"

var a = "A"
var b = "B"
print("a: \(a), b: \(b)")
b = a
print("a: \(a), b: \(b)")
b = "C"
print("a: \(a), b: \(b)")
a = "D"
print("a: \(a), b: \(b)")

let name = "Uriel Olascoaga"
for char in name {
    print(char)
}
print(name.count)

let exclamationMark: Character = "!"
let nameChars: [Character] = ["U", "r", "i", "e", "l"]
var nameString = String(nameChars)
let compoundName = "Uriel " + "Olascoaga"

nameString.append(exclamationMark)

let multiplier = 3
var message = "Multiplier product for \(multiplier) x 3.5 = \(Double(multiplier) * 3.5)"
message.append(exclamationMark)

for i in 1...10 {
    let number = 7
    let result = i * number
    print("\(i) x \(number) = \(result)")
}

let greeting = "Hello, How are you?"
greeting[greeting.startIndex]
// greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for i in greeting.indices {
    print(greeting[i], terminator: " - ")
}

var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " how are you", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -7) ..< welcome.endIndex
welcome.removeSubrange(range)

greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]
let newString = String(firstPart)
