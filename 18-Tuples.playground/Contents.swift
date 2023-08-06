import UIKit

var greeting = "Hello, playground"

let name = "Ugur"
let surname = "Polat"

print(name)
print(surname)

var author : (String, String)?
// or
var author2 = ("Maksim","Gorki")

print(author2.0)
print(author2.1)

let webPage = (statusCode: 404, statusMessage: "Can't reach page")
print(webPage.statusCode)
print(webPage.statusMessage)


var author3 : (name : String, surname : String)
author3.name = "Jack"
author3.surname = "London"
print(author3.name)
print(author3.surname)

var authorName : String = ""
var authorSurname : String = ""

(authorName, authorSurname) = author3
print(authorName)

var number1, number2 : Int
(number1, number2) = (3,5)
print(number1)
print(number2)

let temp = number1
number1 = number2
number2 = temp
print(number1)
print(number2)

(number1, number2) = (number2, number1)
print(number1)
print(number2)
