import UIKit

func add(number1: Double, number2: Double) -> Double {
    return number1 + number2
}

func substract(number1: Double, number2: Double) -> Double {
    return number1 - number2
}

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func substract(number1: Int, number2: Int) -> Int {
    return number1 - number2
}

func printResult(_ operation: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = operation(a, b)
    print(result)
}

printResult(add, 5, 7)
printResult(substract, 5, 7)


typealias Operate = (Double, Double) -> Double

func printResult(_ operation: Operate, _ a: Double, _ b: Double) {
    let result = operation(a, b)
    print(result)
}

printResult(add, 7.8, 2.2)
printResult(substract, 5.5, 0.4)

printResult(add, 5, 7)
printResult(substract, 5, 7)
