import UIKit

var greeting = "Hello, playground"

/*
  if condition {
    // true
 } else {
    
 }
 
 */
let number = 0
if number < 0 {
    print("Negative")
} else if number == 0 {
    print("Zero")
} else {
    print("Pozitive")
}


let clothesColor = "Red"

if clothesColor == "Red" {
    print("Good")
} else if clothesColor == "Blue" {
    print("Not bad")
} else if clothesColor == "Purple" {
    print("Bad")
} else {
    print("No idea")
}

let s1 = 1, s2 = -2, s3 = 5

if s1 >= s2 {
    if s1 >= s3 {
        print("biggest \(s1)")
    } else {
        print("biggest \(s3)")
    }
} else {
    if s2 >= s3 {
        print("biggest \(s2)")
    } else {
        print("biggest \(s3)")
    }
}
