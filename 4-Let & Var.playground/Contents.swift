import UIKit

var word1 = "Swift Programming Language"
word1 = "IOS Application"
print(word1)

let word2 = "Weather is sunny today."
print(word2)

// word2 = "New jacket" -> Error

// var variable -> mutable
// let acting like constant -> immutable


/*
 1-var-let variableName : type = value
 2-var-let variableName : type
 3-varibleName = value
 4-var-let variableName = value
*/

var message = "Hi!" // 4.
message = "project" // 3.

var newMessage : String = "This my new message. How is it?" // 1.
var newMessage2 : String = "" // 1.
var newMessage3 : String = String() // 1.
print(newMessage2)
print(newMessage3)
var newMessage4 : String // 2.
//print(newMessage4) -> Error

let location = "Izmir"
// location = "Mugla" -> Error

let location2 : String // do not initialize value
location2 = "Assign"
