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
