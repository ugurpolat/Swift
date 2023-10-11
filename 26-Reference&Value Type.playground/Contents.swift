import UIKit

// Reference type -> Functions, Closures, Class
// Value Type -> Int, Double, String, Array, Dictionary, Set, Struct, Enum, Tuple


var sayi1 : Int = 5
print("Sayi1 : \(sayi1)")
var sayi2 : Int = sayi1
print("Sayi2 : \(sayi2)")
sayi2 = 4
print("Sayi1 : \(sayi1)")
print("Sayi2 : \(sayi2)")

var isimler1 : [String] = ["Ayse","Fatma","Hayriye"]
var isimler2 : [String] = isimler1


print(isimler1)
print(isimler2)
isimler1[0] = "Kemal"
print(isimler1)
print(isimler2)

class KickBoxerSinif {
    var yumrukHizi : Int
    var yumrukGucu : Int
    var tekmeHizi : Int
    var tekmeGucu : Int
    
    init(yumrukHizi: Int, yumrukGucu: Int, tekmeHizi: Int, tekmeGucu: Int) {
        self.yumrukHizi = yumrukHizi
        self.yumrukGucu = yumrukGucu
        self.tekmeHizi = tekmeHizi
        self.tekmeGucu = tekmeGucu
    }
    
    func bilgileriGoster() {
        print("""
---------------------
Yumruk Hizi : \(yumrukHizi)
Yumruk Gucu : \(yumrukGucu)
Tekme Hizi : \(tekmeHizi)
Tekme Gucu : \(tekmeGucu)
""")
    }
}

struct KickBoxerYapi   {
    var yumrukHizi : Int
    var yumrukGucu : Int
    var tekmeHizi : Int
    var tekmeGucu : Int
    
    init(yumrukHizi: Int, yumrukGucu: Int, tekmeHizi: Int, tekmeGucu: Int) {
        self.yumrukHizi = yumrukHizi
        self.yumrukGucu = yumrukGucu
        self.tekmeHizi = tekmeHizi
        self.tekmeGucu = tekmeGucu
    }
    
    func bilgileriGoster() {
        print("""
---------------------
Yumruk Hizi : \(yumrukHizi)
Yumruk Gucu : \(yumrukGucu)
Tekme Hizi : \(tekmeHizi)
Tekme Gucu : \(tekmeGucu)
""")
    }
}

var ks1 : KickBoxerSinif = KickBoxerSinif(yumrukHizi: 5, yumrukGucu: 6, tekmeHizi: 7, tekmeGucu: 8)
var ky1 : KickBoxerYapi = KickBoxerYapi(yumrukHizi: 10, yumrukGucu: 10, tekmeHizi: 4, tekmeGucu: 4)

var ks2 : KickBoxerSinif = ks1
ks1.bilgileriGoster()
ks2.bilgileriGoster()
ks2.tekmeHizi = 4
ks1.bilgileriGoster()
ks2.bilgileriGoster()

var ky2 : KickBoxerYapi = ky1
ky1.bilgileriGoster()
ky2.bilgileriGoster()
ky2.yumrukGucu = 8
ky1.tekmeHizi = 5
ky1.bilgileriGoster()
ky2.bilgileriGoster()


