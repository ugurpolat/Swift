import UIKit

struct Laptop {
    
    var brand : String
    var ram : Int
    
    
}

var laptop_1 : Laptop = Laptop(brand: "Dell", ram: 8)
var laptop_2 : Laptop = Laptop(brand: "Apple", ram: 12)

//laptop_1.ram  += 4

print(laptop_1.ram)


func vs(pc: Laptop, pc2: Laptop) -> Laptop{
    var result = (pointPc1: 0, pointPc2: 0)
    
    if pc.ram > pc2.ram {
        result.pointPc1 += 1
    } else {
        result.pointPc2 += 1
    }
    
    let r = result.pointPc1 > result.pointPc2 ? pc : pc2
    
    return r
}

let a = vs(pc: laptop_1, pc2: laptop_2)
print(a.brand)


struct Person {
    var name : String
    var surname : String
    var birthDate : Int
    
    func calculate() -> Int {
        return 2023 - birthDate
    }
    
    func printPerson() {
        print("""
        name: \(name)
        surname : \(surname)
        age: : \(calculate())
        """)
    }
}

var p1 : Person = Person(name: "Ugur", surname: "Polat", birthDate: 1995)

p1.calculate()


struct Student {
    var personInfo : Person
    var collegeName : String
}

var student1 : Student = Student(personInfo: Person(name: "Ugur", surname: "Polat", birthDate: 1995), collegeName: "LSB")
var student2 : Student = Student(personInfo: Person(name: "Steve", surname: "Jobs", birthDate: 1955), collegeName: "LSB")
student1.personInfo.printPerson()


struct studentGroup {
    var students : [Student]
    var groupName : String
    func showGroupInfo() {
        print("*************************************")
        print("Ogrenci Grubunun Adi: \(groupName)")
        print("Register Count: \(students.count)")
        print("---------------Gruba Kayitli Ogrenciler-----------------")
        for student in students {
            print(student.personInfo.name)
        }
    }
}

var sg1 : studentGroup = studentGroup(students: [Student](), groupName: "IOS Developers")
sg1.students.append(student1)
sg1.students.append(student2)

sg1.showGroupInfo()




// -------------------------------------------------------------------------------------------------

struct Human {
    var hairColor : String
    var eyeColor : String
    var height : Double
    var age : Int
    var gender : Bool
    var carBrand : String
    
    init(hairColor: String, eyeColor: String, height: Double, age: Int, gender: Bool) {
        self.hairColor = hairColor
        self.eyeColor = eyeColor
        self.height = height
        self.age = age
        self.gender = gender
        self.carBrand = "No car"
    }
    
    init() {
         hairColor = "String"
         eyeColor = "String"
         height = -1
         age = -1
         gender = false
         carBrand = "String"
    }
}

var h1 : Human = Human(hairColor: "Black", eyeColor: "Brown", height: 1.87, age: 28, gender: true)
var h2 : Human = Human()
print(h2)


// -------------------------------------------------------------------------------------------------
