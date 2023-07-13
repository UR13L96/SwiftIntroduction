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
