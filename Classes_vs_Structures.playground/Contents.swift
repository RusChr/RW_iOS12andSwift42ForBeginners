import UIKit

struct ActorStruct {
    let name: String
    var filmography: [String] = []
    
    mutating func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

var gotgStar = ActorStruct(name: "Zoe Saldana", filmography: ["Guardians of the Galaxy"])
gotgStar.filmography.append("Avatar")

var starTrekStar = gotgStar
starTrekStar.filmography.append("Star Trek")

var avatarStar = starTrekStar
for franchiseName in avatarStar.filmography {
    avatarStar.signOnForSequel(franchiseName: franchiseName)
}

avatarStar.filmography
starTrekStar.filmography
gotgStar.filmography

//------------

class ActorClass {
    let name: String
    var filmography: [String] = []
    
    init(name: String, filmography: [String]) {
        self.name = name
        self.filmography = filmography
    }
    
    func signOnForSequel(franchiseName: String) {
        filmography.append("Upcoming \(franchiseName) sequel")
    }
}

let gotgStarC = ActorClass(name: "Zoe Salandana", filmography: ["Guardians of the Galaxy"])
gotgStarC.filmography.append("Avatar")

let starTrekStarC = gotgStarC
starTrekStarC.filmography.append("Star Trek")

var avatarStarC = starTrekStarC
for franchiseName in avatarStarC.filmography {
    avatarStarC.signOnForSequel(franchiseName: franchiseName)
}

avatarStarC.filmography
starTrekStarC.filmography
gotgStarC.filmography

