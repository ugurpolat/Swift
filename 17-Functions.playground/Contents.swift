import UIKit

let number : Int = 3
print("Welcome Functions")

func functionName() {
    // code blocks
}


func greeting() {
    print("Welcome my lord")
}

for _ in 1...3 {
    greeting()
}

func math() {
    let number1 : Int = 4
    let number2 : Int = 5
    let total = number1 + number2
    print(total)
}

math()


// Part 2

func sendMessage(message : String) {
    
    print(message)
}

sendMessage(message: "Hello")
var message2 : String = "How are you ?"
sendMessage(message: message2)

let number3 : Int = 2
let number4 : Int = 4
func multiplication(number1: Int, number2 : Int) {
    let result = 2 * number3 * number4
    print(result)
}

multiplication(number1: number3, number2: number4)


var seasons : [String] = ["summer","winter", "autumn", "spring","winter","autumn","summer","autumn","winter","autumn","summer","spring","winter","spring","summer"]

func checkSeasons(seasons : [String]) {
    var s : [String : Int] = [:]
    for m in seasons {
        if s[m] != nil {
            s[m]! += 1
        } else {
            s[m] = 1
        }
    }
    
    for season in s {
        print("\(season.key) - \(season.value)")
    }
}

checkSeasons(seasons: seasons)

var examNotes : [String : [Float]] = ["Ugur":[50,60],"Mike":[80,90],"George":[100,20],"Jessica":[40,80]]

func checkExam (examNotes : [String:[Float]]) {
    var curve : [String:Float] = [:]
    var t : Float = 0.0
    
    for note in examNotes {
        curve[note.key] = (note.value[0] + note.value[1]) / 2
        
        if curve[note.key]! > t {
            t = curve[note.key]!
            
        }
    }
    
    print(t)
}

checkExam(examNotes: examNotes)

// Part - 3

func oddEven(number : Int) -> String {
    if number % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}

for counter in (1...10) {
    let value = oddEven(number: counter)
    print(value)
}
