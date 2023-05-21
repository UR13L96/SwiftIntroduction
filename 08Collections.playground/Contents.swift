import UIKit

var greeting = "Hello, playground"

// MARK: Array
var someInts = [Int]()
someInts.count
someInts.append(13)
someInts.count
someInts = []
someInts.count

var someDoubles = Array(repeating: 1.618, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList: [String] = [
    "Chips",
    "Meal",
    "Onion"
]
shoppingList.count
