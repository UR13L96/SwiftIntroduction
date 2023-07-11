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
