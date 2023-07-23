import UIKit

var message = "Weolcome to String Lesson"


var str1 = "String expression-1"
var str2:String = "String expression-2"


var strEmpty = ""
var strEmpty_2 = String()


var name = "Lebron"
var lastName = "James"

var person = name + lastName
person = name + " " + lastName

var message_1 = "Hello, "
var message_2 = "how are you ?"
var lastMessage = "\(message_1) \(message_2)"

var poem = """
When daisies pied, and violets blue,
And lady-smocks all silver-white,
And cuckoo-buds of yellow hue
Do paint the meadows with delight ...
"""

name = "Match time"
name.replacingOccurrences(of: "t", with: "temp")
print(name)

var newName = name.replacingOccurrences(of: "t", with: "temp")

var city = "london"
city.append(" and cambridge are very beautiful cities.")
city

city.lowercased()
city.uppercased()


