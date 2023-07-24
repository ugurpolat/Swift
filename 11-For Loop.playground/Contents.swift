import UIKit

var greeting = "Hello, playground"

for number in 1...5 {
    print(number)
}
print("--------")
for d in 1..<5 {
    print(d)
}
print("--------")
var total = 0

for i in 10...20 {
    if i % 2 == 0 {
        total += i
    }
}
print(total)
print("--------")


var message : String = "Hello"

for character in message {
    print(character)
}
print("--------")

var message2 = "I love coding"
var characterCount = 0

for _ in message2 {
    characterCount += 1
}

for value in stride(from: 0, to: 15, by: 3) {
    print(value)
}

for k in stride(from: 20, to: 4, by: -4) {
    print(k)
}
