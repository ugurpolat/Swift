import UIKit

// Mathematical operators in swift
/*
    +
    -
    *
    /
    %
*/

let number1 = 5
let number2 = 20

let toplam = number1 + number2
let fark = number2 - number1
let carpim = number1 * number2
let bolum = number2 / number1
let mod = number2 % number1

// Error
//let number3 : Double = 5
//let result2 = number2 + number3
//
//let number4 : Float = 10.4
//let number5 : Double = 9.2
//var result3 = number4 + number5

let s3 : Double = 10.0
let s4 : Double = 3.0
// Error
//var result : Int = s3 % s4

s3.truncatingRemainder(dividingBy: s4)

// Error
// let b1 : Bool = true
// let b2 = false
// let sonuc = b1 * b2

var s5 : Int = 5
s5 = s5 + 10

s5 += 10
s5 -= 2
s5 %= 3


var message1 : String = "Be carefull"
var message2 : String = " Calm down"
var resultMesaj = message1 + message2

print(resultMesaj)

// process priority
/*
    ()
    %
    * /
    + -
*/
