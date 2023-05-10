import UIKit

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

1 + 2
5 - 3
2 * 3
10.0 / 2.5

9%4
-9%4

let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 5
number += 3
number -= 2
number *= 4
number /= 8

1 == 1
1 == 2

1 != 2

2 > 1
2 < 1

2 >= 1
1 >= 1

2 <= 1

let name = "Nadia"

if name == "Uriel" {
    print("Welcome to the jungle \(name), you gonna die")
} else {
    print("You aren't allowed here")
}

(1, "Uriel") < (2, "Nadia")
(3, "Uriel") < (3, "Nadia")
(3, "Nadia") < (3, "Uriel")
(4, "perro") == (4, "perro")
("perro", false) == ("perro", false)

let contentHeight = 40
var hasImage = true
var rowHeight = 0

/*
if hasImage {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 10
}
*/

rowHeight = contentHeight + (hasImage ? 50 : 10)

let defaultAge = 18
var userAge: Int?

userAge = 26

var ageToBeUsed = userAge ?? defaultAge
//  ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColor: UIColor = .red
var userColor: UIColor?

userColor = .green

var colorToBeUsed = userColor ?? defaultColor

for i in 1 ... 5 {
    print(i)
}

for i in 1 ..< 5 {
    print(i)
}

let names = [
    "Uriel",
    "Nadia",
    "Luis"
]

for i in 0 ..< names.count {
    print(names[i])
}

for name in names[1...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)

let allowEntry = false

if !allowEntry {
    print("Access denied")
}

let enterDoorCode = true
let passRetinaScan = true

if enterDoorCode && passRetinaScan {
    print("Welcome to the jungle baby!!!")
} else {
    print("Access denied")
}

let hasMoney = false
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Welcome to the jungle baby!!!")
} else {
    print("Access denied")
}

if enterDoorCode && passRetinaScan || hasMoney || hasInvitation {
    print("Welcome to the jungle baby!!!")
} else {
    print("Access denied")
}
