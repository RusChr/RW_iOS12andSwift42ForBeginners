import UIKit

struct Wizard {
    var firstName: String {
        willSet {
            print("\(firstName) will be set to \(newValue)")
        }
        didSet {
            if firstName.contains(" ") {
                print("No spaces allowed! \"\(firstName)\" is not a first name. Reverting name to \(oldValue)")
                firstName = oldValue
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get { return "\(firstName) \(lastName)" }
        
        set(newFullName) {
            let nameSubstrings = newFullName.split(separator: " ")
            
            guard nameSubstrings.count >= 2 else {
                print("\(newFullName) is not a full name.")
                return
            }
            let nameStrings = nameSubstrings.map(String.init)
            firstName = nameStrings.first!
            lastName = nameStrings.last!
            
//            firstName = String(nameSubstrings.first!)
//            lastName = String(nameSubstrings.last!)
        }
    }
    
    lazy var magicalCreature = ""
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.fullName

wizard.fullName = "Ruschr"

wizard.fullName = "Rus Chr"
wizard.firstName
wizard.lastName

wizard.firstName = "Rustam "


print("----------")
//------- CHALLENGE --------

struct Temperature {
    var degreesF: Double {
        didSet {
            if degreesF > 100 {
                print("It's \(degreesF) degrees Fahrenheit! I had fun coding in Swift with you before I melted.")
            }
        }
    }
    var degreesC: Double {
        get { return (degreesF - 32) / 1.8 }
        set { degreesF = newValue * 1.8 + 32 }
    }
}

var temperature = Temperature(degreesF: 32)
temperature.degreesC

temperature.degreesC = 75
temperature.degreesF
