import UIKit

var greeting = "Hello, playground"


// var/let dictionaryName : [keyType : valueType]
// var/let dictionaryName = [keyType : valueType]()

var numbers = [String : Int]()
numbers["one"] = 1
numbers["two"] = 2
numbers["three"] = 3
numbers["four"] = 4
print(numbers)

print(numbers["three"] ?? "There is no three")

for (key,value) in numbers {
    print("key \(key) - value \(value)")
}

let keys1 = numbers.keys

for key in keys1 {
    print(key)
}

let values1 = numbers.values

for value in numbers.values {
    print(value)
}

let values2 = Array(numbers.values)
var total = 0
for s in values2 {
    total += s
}

print("Total: \(total)")

let keys2 = Array(numbers.keys)
print(keys2)

var info = [String : Any]()
info["Name"] = "Ugur"
info["Surname"] = "Polat"
info["Age"] = 27
info["Married"] = true

print(info)

for (key,value) in info {
    print("key \(key) - value \(value)")
}

if info.isEmpty {
    print("Dictionary is empty")
} else {
    print("Dictionaryitem count \(info.count)")
}

var capitals = ["Turkey" : "Ankara",
                "Germany" : "Berlin",
                "ABD" : "Washington",
                "France" : "Paris",
                "Ireland" : "Dublin"]

var licencePlate = ["Istanbul" : 34, "Ankara" : 6, "Izmir" : 35]


var h1 = ["animal" : "Lion", "feet" : "4", "movement" : "fast"]
var h2 = ["animal" : "bird", "feet" : "2", "movement" : "fly"]
var h3 = ["animal" : "dolphin", "feet" : "none", "movement" : "swim"]

var array : [[String : String]] = []
array.append(h1)
array.append(h2)
array.append(h3)
array.count
print(array[0]["feet"]!)

var array2 = [[String : String]()]
array2.removeFirst()
array2.append(h2)
array2.append(h3)

var animals = [String : Array<Dictionary<String,String>>]()
animals["group-1"] = array
animals["group-2"] = array2

print(animals)

for (key, value) in animals {
    print("--------------")
    print(key)
    
    for animal in value {
        print(animal["animal"]!)
    }
}

var notes = [String : Int]()
print(notes.count)

notes["test1"] = 45
notes["test2"] = 50
notes["test3"] = 60
print(notes)

notes["test2"] = 70
print(notes)

notes.updateValue(75, forKey: "test2")
print(notes)

notes.removeValue(forKey: "test2")
print(notes)

notes["test1"] = nil
print(notes)

// SET

var languages = [String]()

languages.append("Turkish")
languages.append("English")
languages.append("French")
print(languages.count)

languages.append("Turkish")
print("Array has \(languages.count) items.")

for lang in languages {
    print(lang)
}

// use set

var fruitSet = Set<String>()
fruitSet.insert("banana")
fruitSet.insert("fig")
fruitSet.insert("grape")
fruitSet.insert("mango")

print(fruitSet.count)
fruitSet.insert("avocado")
print(fruitSet.count)
fruitSet.insert("avocado")
print(fruitSet.count)

let (joinResult, joinValue) = fruitSet.insert("fig")

let deleteResult = fruitSet.remove("banana") ?? "There is no banana"
print(deleteResult)

var numbers1 : Set<Int> = [1,2,3,4,5,6]
var numbers2 : Set<Int> = [4,5,6,7,8,9]
var numbers3 : Set<Int> = [4,5]
var numbers4 : Set<Int> = [99,100,10]
var values_ = [1,2,3,4,5]

// union
let union = numbers1.union(numbers2).sorted()
print(union)

// intersection
let intersection = numbers1.intersection(numbers2).sorted()

// subtracting
let subtracting = numbers1.subtracting(numbers3).sorted()
print(subtracting)

//symmetricDifference
let symmetricDifference = numbers1.symmetricDifference(numbers2).sorted()
print(symmetricDifference)


//disjoint
numbers1.isDisjoint(with: numbers3)

// subset
if numbers3.isSubset(of: numbers1) {
    print("Yes")
} else {
    print("No")
}


let k1 : Set = [2,4,6,8,10]
let k2 : Set = [0,3,7,6,8]
let k3 : Set = [4,10,2,8,6]

k2 == k3
