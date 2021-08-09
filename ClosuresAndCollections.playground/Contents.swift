import UIKit

var names = ["Zeus", "Poseidon", "Ares", "Demeter"]

names.sort()
names.sort(by: { (a, b) -> Bool in
    a > b
})

let longToShorNames = names.sorted {
    $0.count > $1.count
}

longToShorNames
names


//------------
// ----------- FILTER -----------

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

var arrayForFilteredResults: [Double] = []

for price in prices where price > 5 {
    arrayForFilteredResults.append(price)
}
arrayForFilteredResults

//let largePrices = prices.filter { price -> Bool in
//    return price > 5
//}

let largePrices = prices.filter { $0 > 5 }
largePrices


//------------
// ----------- MAP -----------

var arrayForSalePraces: [Double] = []

for price in prices {
    arrayForSalePraces.append(price * 0.9)
}
arrayForSalePraces

let salePrices = prices.map { $0 * 0.9 }
salePrices


//------------
// ----------- REDUCE -----------

var doubleForSum = 0.0

for price in prices {
    doubleForSum += price
}
doubleForSum

//let sum = prices.reduce(0) {
//    $0 + $1
//}

let sum = prices.reduce(0.0, +)
sum


var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

var arrayForStockValues: [Double] = []

for (price, quantity) in stock {
    let value = price * Double(quantity)
    arrayForStockValues.append(value)
}
arrayForStockValues

//let stockSum = stock.reduce(into: []) {
//    $0.append($1.key * Double($1.value))
//}

let stockSum = stock.reduce(into: []) { result, pair in
    result.append(pair.key * Double(pair.value))
}

stockSum


//------------
// ----------- COMPACTMAP & FLATMAP -----------

let userInput = ["meow!", "15", "37.5", "seven"]

var arrayForValidInput: [Int] = []

for input in userInput {
    guard let input = Int(input) else {
        continue
    }
    arrayForValidInput.append(input)
}
arrayForValidInput

let validInput = userInput.compactMap { input in
    Int(input)
}
validInput


let arrayOfDwarfArrays = [
    ["Sleepy", "Grumpy", "Doc"],
    ["Thorin", "Nory"]
]

var arrayOfDwarves: [String] = []

for dwarfArray in arrayOfDwarfArrays {
    for dwarf in dwarfArray where dwarf > "M" {
        arrayOfDwarves.append(dwarf)
    }
}
arrayOfDwarves.sorted()

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { array -> [String] in
    return array.filter { dwarf in
        dwarf > "M"
    }
}
let sortedDwarves = dwarvesAfterM.sorted()
sortedDwarves
