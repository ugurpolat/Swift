import UIKit

var greeting = "Hello, playground"
 
var numbers1 : [Int] = []
var numbers2 = [Int]()

print(numbers1)
print(numbers2)
var numbers3 : [Int] = [10,20,30,140,50,60]
print(numbers3)

var numbers4 = [1,2,3,4,5,6,7]
print(numbers4)

var numbers5 : [Int] = Array(repeating: 0, count: 10)
print(numbers5)

let value1 = numbers3[5]

print(numbers3.count)

print(type(of: numbers4))


numbers3.append(120)
print(numbers3)

numbers3[2] += 35
print(numbers3)

print(numbers3.max()!)
print(numbers3.min()!)

if numbers2.isEmpty {
    print("Empty")
} else {
    print("Not empty")
}

let sortedArray = numbers3.sorted()
print(sortedArray)


var fruits : [String] = ["cherry","apple","fig","mango"]
var a : Int = 0
for fruit in fruits {
    for c in fruit {
        if c == "a" {
            a += 1
        }
    }
}

var sortedFruits = fruits.sorted()

numbers3.append(991)
for (index,value) in numbers3.enumerated() {
    print(index)
    print(value)
    print("----")
}

var names = ["Ayse","Guny","Gunduz","Hakan","Sibel","Yunus"]
print(names)

names.append(contentsOf: ["Kaan","Baran"])
print(names)

names.insert("Ugur", at: 2)
names.remove(at: 3)

names.removeFirst()
names.removeLast()

//names.removeAll()

print(numbers3)
print(numbers3.startIndex)
print(numbers3.endIndex)
print(numbers3.count)
numbers3.insert(999, at: numbers3.endIndex)
print(numbers3)


numbers3.first!
numbers3.last!

var ages = [18,20,18,24,21,15,40,19,20,27,25,29,33,51,13]
ages.firstIndex(of: 18)
ages.lastIndex(of: 20)

// closure
let value = ages.last(where: {$0 < 18})
let index2 = ages.firstIndex(where: {$0 < 18})

names.first(where: {$0.contains("a")})
