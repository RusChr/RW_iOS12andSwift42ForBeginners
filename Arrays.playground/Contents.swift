import UIKit

var pastries: [String] = []
pastries.append("cookie")
pastries += ["cupcake", "donut", "pie", "brownie"]

//pastries.isEmpty
//
//pastries.removeAll()
//pastries.isEmpty

if let first = pastries.first, let min = pastries.min(), let max = pastries.max() {
    print(first, min, max)
}

let firstThree = pastries[1...3]
//firstThree[0] // Error

let firstThreeArr = Array(firstThree)
firstThreeArr[0]

pastries.contains("donut")
pastries.contains("lasagna")

pastries.insert("tart", at: 0)

let removedTwo = pastries.remove(at: 2)
let removedLast = pastries.removeLast()

removedTwo
removedLast
pastries

pastries[0...1] = ["brownie", "fritter", "tart"]
pastries

pastries.swapAt(2, 0)

for (index, pastry) in pastries.enumerated() {
    print(index, pastry)
}


//--------
print("--------------")

pastries.firstIndex(of: "fritter")

let players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
let scores = [2, 2, 8, 6, 1, 2, 1]

for (index, player) in players.enumerated() {
    print(player, scores[index])
}
