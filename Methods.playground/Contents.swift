import UIKit

enum Weekday: CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    mutating func advance(by dayCount: UInt) {
        let indexOfToday = Weekday.allCases.firstIndex(of: self)!
        let indexOfAdvancedDay = indexOfToday + Int(dayCount)
        
        self = Weekday.allCases[indexOfAdvancedDay % Weekday.allCases.count]
    }
}

Weekday.allCases

var weekday: Weekday = .tuesday
weekday.advance(by: 6)


struct Time {
    var day: Weekday
    var hour: UInt
    
    init(day: Weekday, hour: UInt = 0) {
        self.day = day
        self.hour = hour
    }
    
    mutating func advance(byHours hourCount: UInt) {
        self = self.advanced(byHours: hourCount)
    }
    
    func advanced(byHours hourCount: UInt) -> Time {
        let (dayCount, hour) = (self.hour + hourCount).quotientAndRemainder(dividingBy: 24)
        var time = self
        time.day.advance(by: dayCount)
        time.hour = hour
        return time
    }
}

let time = Time(day: .monday)
var advacedTime = time.advanced(byHours: 25)
print(advacedTime.day, advacedTime.hour)
advacedTime.advance(byHours: 6)


enum Mathematics {
    static func getLength(x: Double, y: Double) -> Double {
        return (x * x + y * y).squareRoot()
    }
}

Mathematics.getLength(x: 3, y: 4)


print("----")
//------ CHALLENGE --------

struct Student {
    let firstName: String
    let lastName: String
    var grade: Int
}

struct Classroom {
    let className: String
    var students: [Student]
    
    func getHighestGrade() -> Int? {
        return students.map { $0.grade } .max()
    }
}

var classroom = Classroom(
    className: "Usable Clock Design",
    students: [
        Student(firstName: "Jessy", lastName: "Catterwaul", grade: 70),
        Student(firstName: "Catie", lastName: "Catterwaul", grade: 95),
        Student(firstName: "Salvador", lastName: "Dali", grade: 2)
    ]
)
classroom.getHighestGrade()


extension Classroom {
    mutating func curveGrades() {
        guard let highestGrade = getHighestGrade() else {
            return
        }
        students = students.map { [curveAmount = 100 - highestGrade] student in
//            let curveAmount = 100 - highestGrade
            var student = student
            student.grade += curveAmount
            return student
        }
        .sorted {
            $0.grade > $1.grade
        }
    }
}

classroom.curveGrades()
classroom.students

