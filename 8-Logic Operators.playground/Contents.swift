import UIKit

var greeting = "Hello, playground"
// >, <, >=, <=, ==, !=, !

var number1 : Int = 10
var number2 : Int = 5
var number3 : Double = 15.4

// > is left value bigger than right -> than true else false
var s1 = number1 > number2
print(s1)
print(number1 > number2)

// > is left value lowet than right -> than true else false
print(number1 < 9)
print(number3 < 14)

print(number1 >= 9)
print(number2 >= 4)

print(number2 <= 9)
print(number1 <= 14)

print(number2 == number2)
print(number2 == 5)

var word1 = "logic"
var word2 = "Logic"
print(word1 == word2)

print(word1.lowercased() == word2.lowercased())
print(word1.uppercased() == word2.uppercased())

print(word1 > word2 )

 print(word1 != word2)
print(number2 != 5)



let b1 = true
let b2 = false
var s2 = b1 != b2
print(s2)

print(!(4 > 4))
print(!true)
print(!false)
