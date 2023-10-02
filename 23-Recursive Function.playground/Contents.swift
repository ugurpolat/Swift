import UIKit

// Example-1
func countBackwards(number : Int) {
    print(number)
    if number > 0 {
        countBackwards(number: number - 1)
    }
}

var startIndex = 4
countBackwards(number: startIndex
)

// Example-2
func printNumber(number : Int) {
    print("Print(\(number) func started.")
    if number > 1 {
        print("Print(\(number) func called Print(\(number - 1))")
        printNumber(number: number - 1)
    }
    print("Print(\(number) func print \(number) value")
    print("Print(\(number) func. finished.")
}

printNumber(number: 3)

// Example - 3

func factorial(number : Int) -> Int {
    
    if number == 1 {
        return 1
    } else {
        return number * factorial(number: number - 1)
    }
    
}

let a = factorial(number: 5)
print(a)

// Example - 4

func fibonacciRecursiveNum1(steps: Int) -> [Int] {
    
    assert(steps > 1)
    
    var array = [0, 1]
    
    while array.count < steps {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}
fibonacciRecursiveNum1(steps: 4)

// Example - 5

func findDigit(number : Int) -> [Int] {
    if number >= 10 {
        let firstDigit = findDigit(number: number / 10)
        let lastDigit = number % 10
        
        return firstDigit + [lastDigit]
    } else {
        return [number]
    }
}

var value : Int = 54342

findDigit(number: value)


// Example - 6

func power(x : Int, y : Int) -> Int {
    
    if y == 0 {
        return 1
    } else {
        return x * power(x:x, y:y-1)
    }
}

power(x: 4, y: 3)


// Example - 7

func findBiggestDivisibleNumber(number1 : Int, number2 : Int) -> Int {
    if number2 == 0 {
        return number1
    } else {
        if number1 > number2 {
            return findBiggestDivisibleNumber(number1: number1 - number2, number2: number2)
        } else {
            return findBiggestDivisibleNumber(number1: number1, number2: number2 - number1)
        }
    }
}


findBiggestDivisibleNumber(number1: 12, number2: 18)
