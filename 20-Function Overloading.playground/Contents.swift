import UIKit

func sumNumbers(num1 : Int, num2 : Int) -> Int {
    return num1 + num2;
}

func sumNumbers(n1 : Int, n2 : Int) {
    print("Sum of Numbers : \(n1 + n2)")
}

func sumNumbers(nm1 : Double, nm2 : Double) -> Double {
    return nm1 + nm2
}

func sumNumbers(numbers : [Int]) -> Int {
    var total : Int = 0
    for value in numbers {
        total += value
    }
    return total
}


var result1 = sumNumbers(num1: 3, num2: 2)
print(result1)

var result2 = sumNumbers(nm1: 3.4, nm2: 4.1)
print(result2)

sumNumbers(n1: 4, n2: 7)

sumNumbers(numbers: [1,2,3,4,5,6,7,8,9])

// Default Function parameter and variadic function
func showMessage(message : String = "Default Message Value") {
    print("1 New Message")
    print("Received Message : \(message)")
}

showMessage(message: "Ugur")
showMessage()

func calculateExponent(base : Int, pow : Int = 2) -> Int {
    var result = 1
    for _ in 1...pow {
        result *= base
    }
    return result
}

print(calculateExponent(base: 4, pow: 3))
print(calculateExponent(base: 3))

/*
 
func avg(values : [Double]) -> Double {
    var sum : Double = 0
    for i in values {
        sum += i
    }
    return sum / Double(values.count)
}

var values : [Double] = [10,20,30,40,50,60]
var avg_1 = avg(values: values)
print(avg_1)
 
*/

func avg(parameters : Double...) -> Double {
    print(type(of: parameters))
    var sum : Double = 0
    for i in parameters {
        sum += i
    }
    return sum / Double(parameters.count)
}

print(avg(parameters: 10,20,30,40,50,60))

// Function in-out

func changeValue(s1 : inout Int, s2 : inout Int) {
    var temp = s1
    s1 = s2
    s2 = temp
}

var s1 : Int = 4
var s2 : Int = 6

print("old s1 : \(s1)")
print("old s2 : \(s2)")

changeValue(s1: &s1, s2: &s2)

print("new s1 : \(s1)")
print("new s2 : \(s2)")

func makeDouble(s1 : inout Int, s2 : inout Int) {
    s1 *= 2
    s2 *= 2
}

func makeDouble (numbers : inout [Int]) {
    for i in (0...(numbers.count-1)){
        numbers[i] *= 2
    }
}

var n1 = 5 , n2 = 6, n3 = 4
makeDouble(s1: &n1, s2: &n2)
n1
n2

var values = [1,2,3,4,5,6,7,n3]
makeDouble(numbers: &values)
values
