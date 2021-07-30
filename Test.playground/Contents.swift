import UIKit

let lifeStage: String
let age = 7200000000000000

switch age {
case 0...2:
    lifeStage = "Infant"
case 3...12:
    lifeStage = "Child"
case 13...19:
    lifeStage = "Teenager"
case 20...39:
    lifeStage = "Adult"
case 40...60:
    lifeStage = "Middle aged"
case 61...:
    lifeStage = "Eldery"
default:
    lifeStage = "Invalid"
}


lifeStage

