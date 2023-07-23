import UIKit

var greeting = "Hello, playground"

var message : String = "Hello"
print(message)
message = message + " from the otherside"
print(message)

var finalNote : Int
finalNote = 20
message = ""
print(message)

var s1 : Int = 4
var s2 : Int?
print(type(of: s2))

// optinal advantage
//
//
//

// optinal disadvantage

var s5 : Int?
print(s5)

var s6 : Int?
var s7 : Int = s6 ?? 0
print(s7)

var s8 : Int? = 10
var s9 : Int? = s8 ?? -1
print(s9)
print(s9!) // force unwrapping

// fatal error
// var s10 : Int?
// print(s10!)
