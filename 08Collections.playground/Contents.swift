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
    print("You will need to do the shopping")
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

for (i, item) in shoppingList.enumerated() {
    print("\(i + 1): \(item)")
}

// MARK: Set
var letters = Set<Character>()
letters.count
letters.insert("u")
letters.insert("r")
letters.insert("i")
letters

var topGames: Set<String> = [
    "Fortnite",
    "FIFA",
    "Hitman"
]
topGames.count

if topGames.isEmpty {
    "There's no ranked games"
}

topGames.insert("RDR2")

if let removedGame = topGames.remove("FIFA") {
    print("Item deleted: \(removedGame)")
}

if topGames.contains("Hitman") {
    print("I love this game")
}

for game in topGames.sorted() {
    print(game)
}

let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

// A union B
oddNumbers.union(evenNumbers).sorted()

// A intersection B
oddNumbers.intersection(evenNumbers)
evenNumbers.intersection(primeNumbers).sorted()
oddNumbers.intersection(primeNumbers).sorted()

// A substracting B
oddNumbers.subtracting(primeNumbers).sorted()

// A symmetricDifference B
oddNumbers.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["Dog", "Cat"]
let farmAnimals: Set = ["Cow", "Horse", "Pig", "Dog", "Cat"]
let cityAnimals: Set = ["Rat", "Dove"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)
