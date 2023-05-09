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
