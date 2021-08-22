import Foundation


let mysteryDataURL = URL(fileURLWithPath: "mystery", relativeTo: FileManager.documentDirectoryURL).path
let stringURL = FileManager.documentDirectoryURL
    .appendingPathComponent("string")
    .appendingPathExtension("txt")

stringURL.path


//------CHALLENGE-------

let challengeString = "low F#"
let challengeStringURL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL).appendingPathExtension("txt")
challengeStringURL.lastPathComponent
