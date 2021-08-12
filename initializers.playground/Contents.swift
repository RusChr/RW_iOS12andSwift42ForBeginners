import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [String] = []
}

extension Student {
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
        grades = transfer.grades
    }
}

class StudentAthlete: Student {
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }
    
    required convenience init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName, sports: [])
    }
    
    convenience init(transfer: StudentAthlete) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName, sports: transfer.sports)
        grades = transfer.grades
    }
}

let rudy = StudentAthlete(firstName: "Daniel", lastName: "Ruettiger", sports: ["Football"])
StudentAthlete(firstName: "Bernie", lastName: "Kosar")
StudentAthlete(transfer: rudy).sports
