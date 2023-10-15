import UIKit

class Medya {
    var adi : String
    init(adi : String) {
        self.adi = adi
    }
}


class Kitap : Medya {
    var yazari : String
    var baskiYili : Int
    init(adi: String, yazari: String, baskiYili: Int) {
        self.yazari = yazari
        self.baskiYili = baskiYili
        super.init(adi: adi)
    }
}

class Film : Medya {
    var yonetmen : String
    var odullu : Bool
    init(adi: String, yonetmen: String, odullu: Bool) {
        self.yonetmen = yonetmen
        self.odullu = odullu
        super.init(adi: adi)
    }
}

// upcasting
let arsivim : [Medya] = [
    Film(adi: "The Shining", yonetmen: "Stanley Kubrick", odullu: true),
    Kitap(adi: "Ince Memed", yazari: "Yasar Kemal", baskiYili: 1950),
    Film(adi: "Catch me if you can", yonetmen: "Steven Spielberg", odullu: true),
    Kitap(adi: "Doktor Jivago", yazari: "Boris Pasternak", baskiYili: 1960)
]

var sayilar : (kitapSayisi : Int, filmSayisi : Int) = (0,0)

// tip kontrolu yapacagiz sadece. Tip donusumu yapmayacagiz.

for medya in arsivim {
    
    if medya is Film {
        sayilar.filmSayisi += 1
    } else if medya is Kitap {
        sayilar.kitapSayisi += 1
    }
}

print("Arsivde \(sayilar.filmSayisi) tane film ve \(sayilar.kitapSayisi) tane kitap bulunmaktadir")

// downcasting

for medya in arsivim {
    
    if let film = medya as? Film {
        //medyayi filme cevirmeye calisiyoruz.Eger cevrilebiliyorsa if blogu calisiyor
        print("\(film.adi) Filmin Yonetmeni : \(film.yonetmen)")
    } else if let kitap = medya as? Kitap {
        print("\(kitap.adi) Kitabin Yazari : \(kitap.yazari)")
    }
}


var degerler : [Any] = [Any]()
degerler.append(2)
degerler.append(2.0)
degerler.append(35)
degerler.append(4.1)
degerler.append("Nasilsiniz")
degerler.append((10,20))
degerler.append(Film(adi: "Yuzuklerin Efendisi", yonetmen: "Peter Jackson", odullu: true))


for deger in degerler {
    switch deger {
        // 2 yi int olarak algila
    case 2 as Int : print("Tam sayi olan 2")
    case 2 as Double : print("Double sayi oan 2.0")
    case let tamSayi as Int : print("Bu deger tamsayisi : \(tamSayi)")
    default : print("Bilinmeyen tipte bir deger geldi")
    }
}
