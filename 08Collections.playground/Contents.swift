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

if shoppingList.isEmpty {
    print("The shopping list is empty")
} else {
    print("You will need to do de shopping")
}

shoppingList.append("Coca-Cola")
shoppingList.count

shoppingList += ["Sauce", "Salt"]

var firstElement = shoppingList[0]
shoppingList[0] = "Eggs"
shoppingList
shoppingList[5]
shoppingList[3...5]
shoppingList[3...5] = ["Orange", "Banana", "Mango"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList
