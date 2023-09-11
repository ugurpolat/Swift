import UIKit

func findAngleCount(shape : String) -> Int? {
    
    switch shape {
    case "hexagon":
        return 6
    case "pentagon":
        return 5
    case "square":
        return 4
    case "rectangle":
        return 4
    case "triangle":
        return 3
    default :
        return nil
    }
}

func printAngleCount(_shape : String) {
    if let angleCount = findAngleCount(shape: _shape) {
        print(angleCount)
    } else {
        print("WTF")
    }
}

let s1 = "square"
printAngleCount(_shape: s1)


func getFirstElement(data: [String]) -> String? {
    if data.count > 0 {
        return data[0]
    }
    
    return nil
}

let searchEngines = ["google","yahoo","yandex"]
let names : [String] = []

if let first = getFirstElement(data: searchEngines) {
    print(first)
} else {
    print("WTF")
}

func max(edge_1 : Double?, edge_2 : Double?) -> Double? {
    
    if let k1 = edge_1, let k2 = edge_2 {
        var hipotenus = pow(k1,2) + pow(k2,2)
        hipotenus = hipotenus.squareRoot()
        return hipotenus
    }
    return nil
}

let str1 = "7"
let str2  = "24"

var number1 = Double(str1)
var number2 = Double(str2)

max(edge_1: number1, edge_2: number2)
