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













