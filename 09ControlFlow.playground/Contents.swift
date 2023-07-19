import UIKit

// MARK: For in

let names = ["Uriel", "Nadia", "Kurt"]

for name in names {
    print("Hello \(name)!")
}

let numberOfLegs = [
    "spider": 8,
    "ant": 6,
    "dog": 4
]

for (animal, legs) in numberOfLegs {
    print("\(animal): \(legs) legs")
}

for i in 1...5 {
    print("\(i) x 3 = \(i * 3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for minute in stride(from: 0, to: minutes, by: minuteInterval) {
    print("\(hour):\(minute)")
}

// MARK: While

var i = 0
while i <= 10 {
    i += 1
}
print(i)

while i <= 10 {
    i += 1
}
print(i)

// MARK: Repeat while

repeat {
    i += 1
} while i <= 10
print(i)

// MARK: Eratosthenes' sieve

let a = 2
let b = 100
var sieve: [Int] = Array(a...b)

var j = 0
while j < sieve.count {
    let value = sieve[j]
    
    if value * value >= b {
        break
    }
    
    var k = j + 1
    while k < sieve.count {
        if sieve[k] % value == 0 {
            sieve.remove(at: k)
        } else {
            k += 1
        }
    }
    
    j += 1
}
sieve

// MARK: If - else

var temp = 16

if temp <= 15 {
    print("It's cold! Turn on the heating")
} else if temp >= 25{
    print("It's getting hot! Turn off the air conditioning")
} else {
    print("Que agusticidad!")
}

// MARK: Switch

let someChar: Character = "A"
switch someChar {
case "a", "A":
    print("Is the first letter of the alphabet")
case "z", "Z":
    print("Is the last letter of the alphabet")
default:
    print("Is another letter")
}

let moons = 7890
let phrase = "moons on Saturn"
let naturalCount: String

switch moons {
case 0:
    naturalCount = "There's no "
case 1..<5:
    naturalCount = "There are a few "
case 5..<12:
    naturalCount = "There are a quite few "
case 12..<100:
    naturalCount = "There are dozens of "
case 100..<1000:
    naturalCount = "There are hundred of "
default:
    naturalCount = "There are countless of "
}
print("\(naturalCount)\(phrase)")


let somePoint = (1, 0)

switch somePoint {
case (0, 0):
    print("The point \(somePoint) is the origin of the coordinates")
case (_, 0):
    print("The point \(somePoint) is located in the X-axis")
case (0, _):
    print("The point \(somePoint) is located in the Y-axis")
default:
    print("The point \(somePoint) is somewhere else")
}

let anotherPoint = (2, -2)

switch anotherPoint {
case (let x, 0):
    print("The point \(somePoint) is located in the X-axis, with value \(x)")
case (0, let y):
    print("The point \(somePoint) is located in the Y-axis, with value \(y)")
case (let x, let y) where x == y:
    print("The point \(somePoint) lies on the line x = y")
case (let x, let y) where x == -y:
    print("The point \(somePoint) lies on the line x = -y")
case (let x, let y):
    print("The point \(somePoint) is somewhere else, with value \(x), \(y)")
}


let anotherCharacter: Character = "u"

switch anotherCharacter {
case "a", "e", "i", "o", "u":
    print("Is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "ñ", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("Is a consonant")
default:
    print("Is another character")
}


let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("The distance to the origin is \(distance)")
default:
    break
}

// MARK: Continue & break

let sentence = "Great minds think alike"
var filteredSentence = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]

for char in sentence {
    if charactersToRemove.contains(char) {
        continue
    }
    filteredSentence.append(char)
    
    if char == "d" {
        break
    }
}
filteredSentence

// MARK: Fallthrough

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and"
    fallthrough
default:
    description += " an integer."
}
print(description)

// MARK: Guard let

var people: [String: Any] = [
    "name": "Uriel",
    "age": 26,
    "isMale": true
]
testUserValidation()

func testUserValidation() {
    guard let age = people["age"] else {
        return
    }
    print(age)
    
    guard let surname = people["surname"] else {
        return
    }
    print(surname)
}
