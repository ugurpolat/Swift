import UIKit

class Calisan {
    var adiSoyadi : String
    var departmani : String
    var baslangicYili : Int
    init(adiSoyadi: String, departmani: String, baslangicYili: Int) {
        self.adiSoyadi = adiSoyadi
        self.departmani = departmani
        self.baslangicYili = baslangicYili
        Calisan.calisanSayisi += 1
    }
    
    var tecrube : Int {
        get {
            return 2019 - baslangicYili
        }
    }
    
    static var calisanSayisi : Int = 0
    static var ekGiderler : Int = 0
    static var aylikGider : Int {
        get {
            return (calisanSayisi * 5000) + ekGiderler
        }
        set {
            let fark = newValue - aylikGider
            if fark > 0 {
                ekGiderler = fark
            }
        }
    }
    // bir alt classta override edilemez
    static func calisanVerileri() {
        print("-----------------")
        print("Calisan Sayisi : \(calisanSayisi)\nAylik Giderleri : \(aylikGider)\nEk Giderler : \(ekGiderler)")
    }
    
    // bir alt classta override edilebilir
    class func calisanVerileriCopy() {
        print("------COPY-----------")
        print("Calisan Sayisi : \(calisanSayisi)\nAylik Giderleri : \(aylikGider)\nEk Giderler : \(ekGiderler)")
    }
    
    final func calisanBilgileriniGoster() {
        print("Calisan Adi Soyadi : \(adiSoyadi)\nDepartmani : \(departmani)")
    }
}

var c1 : Calisan = Calisan(adiSoyadi: "Ugur Polat", departmani: "IT", baslangicYili: 2015)
print("Calisan Tecrube : \(c1.tecrube)")
Calisan.calisanVerileri()
print("Calisan Sayisi : \(Calisan.calisanSayisi)\nAylik Gider : \(Calisan.aylikGider)")
Calisan.aylikGider = 7000
Calisan.calisanVerileri()
Calisan.calisanVerileriCopy()

class Yonetici : Calisan {
    var pozisyonu : String
    static var maas : Int = 8000
    init(adiSoyadi : String, departmani : String, baslangicYili : Int,pozisyonu: String) {
        self.pozisyonu = pozisyonu
        super.init(adiSoyadi: adiSoyadi, departmani: departmani, baslangicYili: baslangicYili)
    }
    
    override class func calisanVerileriCopy() {
        print("------COPY Yonetici-----------")
        print("Calisan Sayisi : \(calisanSayisi)\nAylik Giderleri : \(aylikGider)\nEk Giderler : \(ekGiderler)")
    }
    
    override var tecrube: Int {
        get {
            return(2019 - baslangicYili) + 5
        }
    }
    
}

var y1 : Yonetici = Yonetici(adiSoyadi: "Steve Jobs", departmani: "Marketing", baslangicYili: 2000, pozisyonu: "Manager")
Yonetici.calisanVerileri()
Yonetici.calisanVerileriCopy()
y1.tecrube
y1.calisanBilgileriniGoster()
