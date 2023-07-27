import UIKit

var greeting = "Hello, playground"

let word : String = "Today is very hot"
var characters = [Character]()

for c in word {
    characters.append(c)
}
 
print(characters)


var reverse = ""
var index = characters.count - 1

while index >= 0 {
    reverse += "\(characters[index])"
    index -= 1
}

print(reverse)

let word2 : String = "How is your day?"
var characters2 = Array(word2)

print(characters2)

characters2.reverse()
print(characters2)

let reverse2 = String(characters2)
print(reverse2)

// Example 1

var brands : [String] = ["Ford","Fiat","Hyundai","Honda","Ferrari"]
var reverseBrand = [String]()

for index in stride(from: brands.count - 1, to: -1, by: -1) {
    reverseBrand.append(brands[index])
}
print(reverseBrand)

// Example 2

var numbers = [1,20,3,4,5,6,8]
print("Original : \(numbers)")

var index1 = 0
let lastIndex = numbers.count - 1
let middle = lastIndex / 2
print(middle)
while index1 <= middle {
    let index2 = lastIndex - index1
    let temp = numbers[index1]
    
    numbers[index1] = numbers[index2]
    numbers[index2] = temp
    index1 += 1
}

print(numbers)


var numbers2 = [1,2,3,4,5,6,7]

print(numbers2)

var index2 = 0
while index2 <= (numbers2.count - 1) / 2 {
    numbers2.swapAt(index2, (numbers2.count-1)-index2)
    index += 1
}

print(numbers2)
