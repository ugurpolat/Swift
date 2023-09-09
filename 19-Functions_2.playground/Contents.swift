import UIKit

var greeting = "Hello, playground"

func calculateValues(values : [Int]) -> (minNumber : Int, maxNumber : Int, sum : Int, multiplication : Int) {
    var minNumber = values[0]
    var maxNumber = values[0]
    var sum = 0
    var multi = 1
    
    for num in values {
        if num < minNumber {
            minNumber = num
        } else if num > maxNumber {
            maxNumber = num
        }
        
        sum += num
        multi *= num
    }
    
    return (minNumber, maxNumber, sum, multi)
}

let values = [1,2,3,4,5,-5]
let result = calculateValues(values: values)

func classInfo(data : [String : Int]) -> (overWeightPerson : (name : String, weight : Int), classAverageWeight : Double) {
    
    var overWeight = -1
    var average : Double = 0.0
    var sum : Int = 0
    var name : String = ""
    
    for person in data {
        if person.value > overWeight {
            overWeight = person.value
            name = person.key
        }
        sum += person.value
    }
    average = Double(sum) / Double(data.count)
    
    return ((name, overWeight), average)
}

var kilos : [String : Int] = ["Ugur" : 98, "Mike" : 67, "Charlotte": 74, "Frodo": 122, "Boramir":104, "Gimli":84]

classInfo(data: kilos)
