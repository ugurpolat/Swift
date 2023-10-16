import UIKit

var deger : Int = 10

class A {
    init() {
        deger = 15
        print("A sinifindan yeni bir nesne turetildi.")
    }
    deinit {
        print("A sinifindan turetilen bir nesne hafizadan silindi")
        deger = -1
    }
}

print(deger) // 10 degeri gelecektir.
var n1 : A? = A()
print(deger) // 15 gelmesini bekliyorum
n1 = nil // deinit kod blogu calisacaktir
print(deger)

class Kumbara {
    static var bakiye : Int = 1000
    static func paraCek(cekmekIstenilenParaMiktari cMiktar: Int) -> Int {
        
        guard cMiktar > 0 else {
            print("Girilen miktar hatalidir.")
            return -1
        }
        
        // buraya gelebildiyse kod demekki cMiktar degiskeni sifirdan buyuk bir degerdir
        if cMiktar > bakiye {
            print("Bakiyeniz yetersizdir")
            return -1
        } else if cMiktar == bakiye {
            print("Kumbarada bulunan tum parayi cektiniz")
            bakiye -= cMiktar
            return cMiktar
        } else {
            bakiye -= cMiktar
            print("Kumbaradan \(cMiktar) liralik para cekilmistir. Kalan Bakiyeniz : \(bakiye)")
            return cMiktar
        }
    }
    
    static func paraYukle(yuklenmekIstenenParaMiktari yMiktar : Int) {
        guard yMiktar > 0 else {
            print("Yuklenmek istenen miktar negatif veya sifir olamaz")
                return
        }
        
        bakiye += yMiktar
    }
}

class AileBireyi {
    var cebindekiPara : Int
    init(para: Int) {
        // AileBireyi sinifindan yeno bir nesne turetildiginde kumbaradan para cekecegiz
        
        cebindekiPara = Kumbara.paraCek(cekmekIstenilenParaMiktari: para)
        print("Aile \(self.cebindekiPara) Lira Parasiyla Yeni Biri Katildi")
    }
    
    func paraAl(miktar : Int) {
        cebindekiPara += Kumbara.paraCek(cekmekIstenilenParaMiktari: miktar)
    }
    
    deinit{
        print("Aile bireyi oldu.Bireyin cebindeki \(cebindekiPara) Lira kumbaraya aktarildi.")
        Kumbara.paraYukle(yuklenmekIstenenParaMiktari: cebindekiPara)
    }
}

print("--------------------")
var birey1 : AileBireyi? = AileBireyi(para: 100)
print("Kumbarada \(Kumbara.bakiye) TL Para varß")

// Kumbaradan 200 lira cekelim
birey1?.paraAl(miktar: 200)
print("Bireyin cebinde \(birey1!.cebindekiPara) TL Para var")
birey1 = nil // birey1 nesnesi hafizada herhangi bir yer kaplamayacak
print("Kumbarada \(Kumbara.bakiye) TL Para var")

if birey1 == nil {
    var birey2 : AileBireyi = AileBireyi(para: 200)
    birey2.paraAl(miktar: 300)
}
