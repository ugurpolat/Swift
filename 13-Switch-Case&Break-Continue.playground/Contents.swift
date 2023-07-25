import UIKit

var greeting = "Hello, playground"

let place = "London"

switch place {
    case "London":
        print("1")
    case "Paris":
        print("2")
    default:
        print("3")
}

print("out of switch")


// Break-Continue

for s in 1...10 {
    if s == 5 {
        break
    }
    print(s)
}

print("------------------")

var i = 0

while i < 10 {
    i += 1
    if i == 5 {
        // return 32
        continue
    }
    print(i)
}

for s1 in 1...5 {
    print(s1)
    print("----------------")
    
    for s2 in 1...10 {
        if s2 == s1 {
            break
        }
    }
}

loop: for x in 1...4{
    print(x)
}
