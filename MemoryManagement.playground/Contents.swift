import UIKit

class Person {
    let name: String
    weak var bestBoddy: Person?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("The memory for \(name) has been deallocated!")
    }
}

//var person: Person? = Person(name: "Thanos Jones")
//person = Person(name: "Ultron Bolton")
//
//person = nil

var catty: Person? = Person(name: "Catty Pantherwaul")
var loki: Person? = Person(name: "Loki Moarley")
loki?.bestBoddy = catty
catty?.bestBoddy = loki

loki = nil
catty = nil
