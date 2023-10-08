import UIKit
/*
class Kisi {
    var adi : String
    var soyadi : String
    var yasi : Int
    var sehir : String
    var araba : Araba?
    init(adi: String, soyadi: String, yasi: Int, sehir: String) {
        self.adi = adi
        self.soyadi = soyadi
        self.yasi = yasi
        self.sehir = sehir
    }
}

class Araba {
    var tipi : String?
    var model : Int?
    var fiyati : Double?
    var kmDegeri : Int?
    var sahibi : Kisi?
    
    init(){
        print("Bos bir araba olusturuldu.")
    }
    
    init(tipi : String, model : Int, fiyati : Double, kmDegeri : Int, sahibi : Kisi) {
        self.tipi = tipi
        self.model = model
        self.fiyati = fiyati
        self.kmDegeri = kmDegeri
        self.sahibi = sahibi
        sahibi.araba = self
        
    }
}


var k1 : Kisi = Kisi(adi: "Ugur", soyadi: "Polat", yasi: 25, sehir: "Ankara")
print(k1)

var a1 : Araba = Araba()
var a2 : Araba = Araba(tipi: "Spor", model: 2019, fiyati: 5000000, kmDegeri: 0, sahibi: k1)
print(k1.araba?.fiyati!)

 */

/*
class YemekTarifi {
    var yemeginAdi : String = ""
    var tarifAciklamasi : String = ""
    var ascininVerdigiSkor : Int = 0
    
    init(yemeginAdi: String, tarifAciklamasi: String, ascininVerdigiSkor: Int) {
        self.yemeginAdi = yemeginAdi
        self.tarifAciklamasi = tarifAciklamasi
        
        if ascininVerdigiSkor <= 0 {
            self.ascininVerdigiSkor = 0
        } else if  ascininVerdigiSkor > 5 {
            self.ascininVerdigiSkor = 5
        } else {
            self.ascininVerdigiSkor = ascininVerdigiSkor
        }
        
    }
    
    func yemekTarifiniGoster() {
        print("""
    
Yemegin Adi : \(yemeginAdi)
Tarifin Aciklamasi : \(tarifAciklamasi)
Ascinin Verdigi Skor: \(ascininVerdigiSkor)

""")
    }
    
}


let menemen : YemekTarifi = YemekTarifi(yemeginAdi: "Menemen", tarifAciklamasi: "Yumurta-Domates-Biber-Soganlari kavur", ascininVerdigiSkor: 3)
let tavukKanat : YemekTarifi = YemekTarifi(yemeginAdi: "Tavuk kanat", tarifAciklamasi: "Kanatlari terbiye et ve mangalda pisir", ascininVerdigiSkor: 4)
let kanat : YemekTarifi = YemekTarifi(yemeginAdi: "kanat", tarifAciklamasi: "Kanatlari terbiye et ve mangalda pisir", ascininVerdigiSkor: 7)

class YemekTarifleriKitabi {
    
    var kategoriler : [String]
    var tarifler : [YemekTarifi]
    
    init(kategoriler: [String], tarifler: [YemekTarifi]) {
        self.kategoriler = kategoriler
        self.tarifler = tarifler
    }
    
    func enBegenilenYemegiGoster() {
        var maxTarifIndex : Int = 0
        
        tarifler.enumerated().forEach { (index,item) in
            if  tarifler[index].ascininVerdigiSkor > tarifler[maxTarifIndex].ascininVerdigiSkor {
                maxTarifIndex = index
            }
        }
        print("En begenilen tarif")
        tarifler[maxTarifIndex].yemekTarifiniGoster()
    }
    
}

let muthisYemekTarifleri : YemekTarifleriKitabi = YemekTarifleriKitabi(kategoriler: ["kahvalti"], tarifler: [menemen,tavukKanat,kanat])
muthisYemekTarifleri.enBegenilenYemegiGoster()

 */


/*
class MobilUygulama {
    var uygulamaAdi : String
    var gelistiriciKisi : String
    var appStorePuani : Double
    var kategori : String
    var ucreti : Double
    var ucretsizmi: Bool
    
    init(uygulamaAdi: String, gelistiriciKisi: String, appStorePuani: Double, kategori: String, ucreti: Double) {
        self.uygulamaAdi = uygulamaAdi
        self.gelistiriciKisi = gelistiriciKisi
        self.appStorePuani = appStorePuani
        self.kategori = kategori
        if ucreti > 0 {
            self.ucretsizmi = false
            self.ucreti = ucreti
        } else {
            self.ucretsizmi = true
            self.ucreti = 0
        }

    }
}

let instagram : MobilUygulama = MobilUygulama(uygulamaAdi: "a", gelistiriciKisi: "a", appStorePuani: 12, kategori: "s", ucreti: -1.5)
let snapchat : MobilUygulama = MobilUygulama(uygulamaAdi: "b", gelistiriciKisi: "b", appStorePuani: 0.9, kategori: "s", ucreti: 12)

class AppStore {
    var uygulamalar : [MobilUygulama]
    
    init(uygulamalar: [MobilUygulama]) {
        self.uygulamalar = uygulamalar
    }
    
    func uygulamaYukle(uygulama : MobilUygulama) {
        print("\(uygulama.uygulamaAdi) Uygulamasi App Store'a yuklendi.")
        if uygulama.appStorePuani < 1 {
            print("Uygulama puani artik cok dusuk.Eklenemez")
        } else {
            uygulamalar.append(uygulama)
        }
    }
    
}

var appstore : AppStore = AppStore(uygulamalar: [instagram])
appstore.uygulamaYukle(uygulama: snapchat)

*/

/*
// Inheritance

struct DersNote {
    var dersinAdi : String
    var harfNot : Character
    var sayisalNot : Int
    var kredi : Int
}

class Kisi {
    var adi : String
    var soyadi : String
    var dogumYili : Int
    init(adi: String, soyadi: String, dogumYili: Int) {
        self.adi = adi
        self.soyadi = soyadi
        self.dogumYili = dogumYili
    }
}

class Ogrenci : Kisi {
    var dersler : [DersNote] = []
    func notKaydet(ders : DersNote) {
        dersler.append(ders)
    }
    func dersleriListele() {
        dersler.forEach { ders in
            print("Dersin Adi : \(ders.dersinAdi)")
            print("Dersin Adi : \(ders.harfNot)")
            print("Dersin Adi : \(ders.sayisalNot)")
            print("Dersin Adi : \(ders.kredi)")
            print("----------------------------------")
        }
    }
}

let ahmet = Kisi(adi: "Ugur", soyadi: "Polat", dogumYili: 1995)
let jane = Ogrenci(adi: "Jane", soyadi: "Brown", dogumYili: 1990)

print(ahmet.adi)
print(jane.adi)
print(jane.dersler)

let tarih = DersNote(dersinAdi: "Tarih", harfNot: "A", sayisalNot: 85, kredi: 4)
jane.notKaydet(ders: tarih)

jane.dersleriListele()

 */

/*
 // Override methods
 class Personel {
 var adiSoyadi : String
 var yasi : Int
 var departman : String
 var maas : Int
 
 init(){
 self.adiSoyadi = ""
 self.yasi = 0
 self.departman = ""
 self.maas = 0
 
 }
 
 init(adiSoyadi: String, yasi: Int, departman: String, maas: Int) {
 self.adiSoyadi = adiSoyadi
 self.yasi = yasi
 self.departman = departman
 self.maas = maas
 }
 
 func bilgileriGoster() {
 print("----------------------------------")
 print("Adi Soyadi: \(adiSoyadi)")
 print("Yasi : \(yasi)")
 print("Departman : \(departman)")
 print("Maasi : \(maas)")
 }
 }
 
 class Yonetici : Personel {
 var gorevi : String
 
 override init() {
 self.gorevi = ""
 super.init()
 }
 
 init(adiSoyadi: String, yasi: Int, departman: String, maas: Int, gorevi : String) {
 self.gorevi = gorevi
 super.init(adiSoyadi: adiSoyadi, yasi: yasi, departman: departman, maas: maas)
 }
 
 override init(adiSoyadi: String, yasi: Int, departman: String, maas: Int) {
 self.gorevi = "Gorevi bilinmemektedir."
 super.init(adiSoyadi: adiSoyadi, yasi: yasi, departman: departman, maas: maas)
 }
 
 override func bilgileriGoster() {
 super.bilgileriGoster()
 print("Gorevi: \(gorevi)")
 }
 }
 
 let personel : Personel = Personel(adiSoyadi: "Ugur Polat", yasi: 28, departman: "Insan Kaynaklari", maas: 5000)
 personel.bilgileriGoster()
 let yonetici : Yonetici = Yonetici(adiSoyadi: "Selma Gundogdu", yasi: 29, departman: "Yazilim", maas: 4500, gorevi: "Genel Mudur")
 yonetici.bilgileriGoster()
 
 
 let yonetici_2 : Yonetici = Yonetici()
 yonetici_2.bilgileriGoster()
 
 */

/*
// Poliformizm
 
class GeometrikSekil {
    var genelAdi : String
    
    init(genelAdi: String) {
        self.genelAdi = genelAdi
    }
    
    func alanHesapla() -> Double {
        
        return 0.0
    }
    
    func cevreHesapla() -> Double {
        return 0.0
    }
}


class Dikdortgen : GeometrikSekil {
    var kenar1 : Double
    var kenar2 : Double
    
    init(kenar1: Double, kenar2: Double) {
        self.kenar1 = kenar1
        self.kenar2 = kenar2
        super.init(genelAdi: "Diktorgen")
    }
    
    override func alanHesapla() -> Double {
         return kenar1 * kenar2
    }
    
    override func cevreHesapla() -> Double {
        return 2 * (kenar1 * kenar2)
    }
}

class Kare : Dikdortgen {
    init(kenar1 : Double) {
        super.init(kenar1: kenar1, kenar2: kenar1)
        self.genelAdi = "Kare"
    }
}

class Daire : GeometrikSekil {
    var yaricap : Double
    init(yaricap : Double) {
        self.yaricap = yaricap
        super.init(genelAdi: "Daire")
    }
    
    override func alanHesapla() -> Double {
        return Double.pi*yaricap*yaricap
    }
    
    override func cevreHesapla() -> Double {
        return 2*Double.pi*yaricap
    }
}

var d1 : Dikdortgen = Dikdortgen(kenar1: 15, kenar2: 20)
print(d1.alanHesapla())
print(d1.cevreHesapla())
print(d1.genelAdi)
print(d1.kenar1)
print(d1.kenar2)

print("------------------------------------------------")
var k1 : Kare = Kare(kenar1: 10)
print("""
Genel Adi: \(k1.genelAdi)
Alani : \(k1.alanHesapla())
Cevresi: \(k1.cevreHesapla())
Kenar1 : \(k1.kenar1)
""")

print("------------------------------------------------")
var da1 : Daire = Daire(yaricap: 10.0)
print("""
Genel Adi: \(da1.genelAdi)
Alani : \(da1.alanHesapla())
Cevresi: \(da1.cevreHesapla())
Kenar1 : \(da1.yaricap)
""")
*/

/*
// Static

class MatemataikselIslemler {
    
    static func topla(sayi1 : Double, sayi2: Double) -> Double {
        return sayi1 + sayi2
    }
    
    static func carp(sayi1 : Double, sayi2: Double) -> Double {
        return sayi1 * sayi2
    }
    
}

print(MatemataikselIslemler.topla(sayi1: 2, sayi2: 2))


class Kisi {
    var adi : String
    var soyadi : String
    var yas : Int
    static var kisiSayisi : Int = 0
    
    init(adi: String, soyadi: String, yas: Int) {
        self.adi = adi
        self.soyadi = soyadi
        self.yas = yas
        Kisi.kisiSayisi += 1
    }
        
}

class KanaryaSevenlerDernegi {
    static var genelBaskan : Kisi = Kisi(adi: "Ugur", soyadi: "Polat", yas: 28)
    static var maxUyeSayisi : Int = 15
    var uyeler : [Kisi]
    
    init() {
        uyeler = [Kisi]()
    }
    
    func yeniUyeKaydi(kisi : Kisi) {
        if kisi.yas < 18 {
            print("Yasiniz 18'den kucuk oldugu icin uye olamazsiniz.")
        } else {
            print("Yeni uye kaydiniz yapilmistir. Tebrikler")
            uyeler.append(kisi)
        }
    }
}

var k1 : Kisi = Kisi(adi: "Steve", soyadi: "Jobs", yas: 56)
print(Kisi.kisiSayisi)
var k2 : Kisi = Kisi(adi: "Bill", soyadi: "Gates", yas: 54)
print(Kisi.kisiSayisi)


var dernek : KanaryaSevenlerDernegi = KanaryaSevenlerDernegi()
var dernek2 : KanaryaSevenlerDernegi = KanaryaSevenlerDernegi()
var dernek3 : KanaryaSevenlerDernegi = KanaryaSevenlerDernegi()

print(KanaryaSevenlerDernegi.genelBaskan.adi)
*/














