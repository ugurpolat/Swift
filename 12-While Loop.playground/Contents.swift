import UIKit


// While

var i : Int = 1
var message = "Swift"

var range = 1..<message.count
var sonuc = range.contains(7)

for i in range {
    print(i)
}

print("After for loop i: \(i)")

while i <= message.count {
    print(i)
    i += 1
}

print("After while loop i: \(i)")

print("---------------------------")

var num = 0
while num <= 10 {
    print(num * 5)
    num = num + 2
}

for var num in 0...5 {
    print(num * 5)
    print(num)
    num = num + 999
    print(num)
}

var number : Int = Int.random(in: 1...6)
print(number)


// Repeat while

var value_1 = 1

repeat {
    print(value_1)
    value_1 += 1
} while value_1 <= 0

while false {
    print("while")
}

repeat {
    print("repeat while")
} while false

var currentLevel : Int = 1, lastLevel : Int = 6

let gameOver = true

repeat {
    if gameOver {
        print(currentLevel)
        currentLevel += 1
    }
} while (currentLevel <= lastLevel )
            

repeat {
    let number_2 = Int.random(in: 0...100)
    print(number_2)
    if number_2 % 2 == 0 {
        print("out")
        break
    }
} while true
            
            
            
            
