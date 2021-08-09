import UIKit

typealias Operate = (Int, Int) -> Int

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func printResultOf(_ a: Int, _ b: Int, operation: Operate) {
    let result = operation(a, b)
    print("Result is \(result)")
}
printResultOf(5, 3, operation: add)


//let multiply: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
//    return a * b
//}

//let multiply: (Int, Int) -> Int = { (a, b) in
//    a * b
//}

let multiply: (Int, Int) -> Int = { (a, b) in
    a * b
}

//let multiply: (Int, Int) -> Int = {
//    $0 * $1
//}

multiply(5, 2)

printResultOf(6, 8, operation: multiply)


let divide: Operate = { a, b in
    return a / b
}
printResultOf(92, 3, operation: divide)

printResultOf(5, 2, operation: { $0 - $1 } )

printResultOf(9, 2) { $0 % $1 }


let voidClosure: () -> Void = {
    print("Yay, Swift!")
}
voidClosure
voidClosure()

//-----------


var count = 0
let incrementCount = {
    count += 1
}
incrementCount()
incrementCount()
incrementCount()
count


//typealias intClosure = () -> Int
//
//func makeCountingClosure() -> intClosure {
//    var count = 0
//    let incrementCount: intClosure = {
//        count += 1
//        return count
//    }
//    return incrementCount
//}

func makeCountingClosure() -> () -> Int {
    var count = 0
    let incrementCount: () -> Int = {
        count += 1
        return count
    }
    return incrementCount
}

let counter1 = makeCountingClosure()
let counter2 = makeCountingClosure()

counter1()
counter2()
counter1()
counter2()
