import UIKit

var greeting = "Hello, playground"

// &&

// ||

var myTrue = true
var myFalse = false

print(myTrue && myFalse) // false
print(myTrue && !myFalse) // true
print(myTrue && (3>1)) // true

var (k1,k2) = ("Ugur","Gorkem")
print(!(myTrue && myFalse) && !(k1 != k2)) // false

var number1 = 10.4
print(!(number1 <= 10 && 4 > 3))

var age = 16
var hasParent = false
var isEnter:Bool?
isEnter = (age >= 18 || hasParent == true)
print(isEnter ?? false)
