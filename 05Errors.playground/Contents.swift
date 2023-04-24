import UIKit

func canThrowError() throws {
    // Code that can throw an error
}

do {
    try canThrowError()
    // There's no error
} catch {
    // There's error
}

enum SandwichError: Error {
    case noCleanDishes
    case noIngredients
    case noHungry
}

var cleanDishes: Int = 2
var thereAreIngredients: Bool = false
var amIHungry: Bool = true

func makeASandwich() throws {
    if cleanDishes == 0 {
        throw SandwichError.noCleanDishes
    }
    
    if !thereAreIngredients {
        throw SandwichError.noIngredients
    }
    
    if !amIHungry {
        throw SandwichError.noHungry
    }
    
    print("Sandwich done")
}

func doDishes() {
    print("Doing dishes")
    cleanDishes = 10
}

func goShopping() {
    print("Going shopping")
    thereAreIngredients = true
}

func waitUntilBeHungry() {
    print("Waiting ...")
    amIHungry = true
}

do {
    try makeASandwich()
    print("I'm eating a sandwich")
} catch let error as SandwichError {
    switch error {
    case .noCleanDishes:
        doDishes()
    case .noIngredients:
        goShopping()
    case .noHungry:
        waitUntilBeHungry()
    }
}
