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
