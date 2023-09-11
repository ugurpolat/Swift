import UIKit

var s : String = "12"
var s1 = Int(s)
print(s1)

if let value = Int(s) {
    // if a value is assigned to the value variable
        print(value)
} else {
    // value is not assigned
    print("-")
}

var wages : [String : Int] = ["Mike" : 2500, "Lebron" : 9800 , "Curry" : 6400]
let personName = "Mike"

let m1 = wages[personName]
print(m1)

//print(m1!)

if let test = wages[personName] {
    print("\(personName)- \(test)")
} else {
    print("?")
}

var favSong : String? = "Poker Face"
favSong = nil
print(type(of: favSong))

if let record = favSong {
    print(favSong)
} else {
    print("?")
}

var numbers : [Double] = [10,20,30,40,50]
var f = numbers.first
print(f)
print(f!)
print(f ?? -1)


numbers = []
print(numbers.first)
// print(numbers.first!)

if let firstElement = numbers.first {
    print(firstElement)
} else {
    print("There is no element")
}


