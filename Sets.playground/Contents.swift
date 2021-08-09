import UIKit

var someSet: Set<Int> = [1, 2, 3, 1]

//let someArray: Array<Int>
//let someDictionary: Dictionary<String, Int>

someSet.contains(2)
someSet.contains(8)

someSet.insert(5)
someSet

let removedElement = someSet.remove(3)

let anotherSet: Set<Int> = [5, 7, 13]

let intersection = someSet.intersection(anotherSet)
let difference = someSet.symmetricDifference(anotherSet)
let union = someSet.union(anotherSet)

someSet.formUnion(anotherSet)
someSet
anotherSet

