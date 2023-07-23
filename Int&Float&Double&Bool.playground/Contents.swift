import UIKit

// Int
/*
let name = "Mike"
let surname:String = "Thamson"

let age = 19
let birthDate:Int = 1955

print(age)
print("Name : \(name) Surname: \(surname) Age: \(age)")

var number1 : Int = 14

let maxInt8 : Int8 = 127
let minInt8 : Int8 = -128

// Int8 max and min value
print("Int8 Maximum Value: \(Int8.max)")
print("Int8 Minimum Value: \(Int8.min)")

// 16 bit
print("16bit max-min value")
print(Int16.max)
print(Int16.min)


// 32 bit
print("32bit max-min value")
print(Int32.max)
print(Int32.min)


// 64 bit
print("64bit max-min value")
print(Int64.max)
print(Int64.min)

//Int
print("Int max-min value")
print(Int.max)
print(Int.min)

var value : UInt8 = 255
print("UInt mac-min value")
print(UInt8.max)
print(UInt8.min)

let total = 1995
var sizeValue = MemoryLayout.size(ofValue: total)
print("Total size: \(sizeValue) byte")

let word = "Ugur"
sizeValue = word.utf8.count
print("total size : \(sizeValue)")
*/

// float
// default size 32bit = 4byte

/*
var number1 : Int = 3
var number2 = 4

var f1 : Float = 3.4
print(f1)

var km : Double = 102.94
print(km)

var height = 2.1
print(height)

height = 2
print(height)

// height = number1 -> Error
print(type(of: height))
print(type(of: number1))


print(Int.max)
print(Int.min)

var value1 : Double
value1 = 999999999999999999999999.9999999
print(value1)

var value2 : Double
value2 = -999999999999999999999999.9999999
print(value2)

var amount : Double = 63.8
var kilo : Int = 0
print(amount)
kilo = Int(amount)
print(kilo)

amount = Double(kilo)
print(amount)

var r = 10.4
var pi = 3.14
var circle : Int
// circle = 2 * pi * r // Error
circle = Int(2 * pi * r)

print(circle)

var multiplication = 2.4 * 3
print(multiplication)

var d1 = 2.4
var d2 = 3

var result = Int(d1) * d2 // data loss
print(result) //


print(Double.greatestFiniteMagnitude)
print(Double.leastNormalMagnitude)
print(Float.greatestFiniteMagnitude)
print(Float.leastNormalMagnitude)

let doublenumber : Double = 3.4
let floatNumber : Float = 2.9
var size = MemoryLayout.size(ofValue: doublenumber)
var size2 = MemoryLayout.size(ofValue: floatNumber)
print("Double number memory size: \(size)")
print("Float number memory size: \(size2)")

print(MemoryLayout.size(ofValue: Float.init()))
print(MemoryLayout.size(ofValue: Float32.init()))
print(MemoryLayout.size(ofValue: Float64.init()))
//print(MemoryLayout.size(ofValue: Float80.init())) // 16 byte
*/

// Bool

/*
var number : Int = -2312
print(number)

var value1 : Bool = true
var value2 = false
var value3 : Bool
value3 = false

print(value1)
print(type(of: value1))

print(value3)
print(type(of: value3))

var number1 : Double = 4.1
var number2 : Double = 3
var result = number1 > number2
print(result)

var name = "Ugur"
var surname = "Polat"
var age = 28
var isSingle = true

print("Is he married?: \(isSingle ? "Married" : "Single")")

let d1 : Bool = Bool(truncating: 20)
print(d1)

let d2 : Bool = Bool(truncating: 0)
print(d2)

let d3 : Bool = Bool(truncating: -999)
print(d3)

let s1 = NSNumber(value: d1)
let s2 = Int(truncating: NSNumber(value: d2))
print(s1)
print(s2)

// The processor can allocate a minimum of one byte.
let size1 = MemoryLayout<Bool>.size
print("Boolean size : \(size1) byte")
*/
