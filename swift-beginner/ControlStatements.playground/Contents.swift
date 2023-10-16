import Foundation

// Control Statements (Kontrol İfadeleri)

// if statement (if ifadesi)

// Belirli bir koşulu değerlendirmek ve bu koşula bağlı olarak belirli bir kod bloğunu çalıştırmak için kullanılan bir kontrol yapısıdır. "if" ifadesi, bir koşulun doğru (true) veya yanlış (false) olduğunu değerlendirir ve eğer koşul doğruysa belirtilen kod bloğunu çalıştırır. Eğer koşul yanlışsa, "if" bloğunun içindeki kod atlanır ve program devam eder.


/*
 
 if koşul {
     // Koşul doğruysa buradaki kod çalışır
 } else {
     // Koşul yanlışsa buradaki kod çalışır (isteğe bağlı)
 }
 
 */

let isCompleted = true

if isCompleted{
    print("Bitti")
}

let name : String = "Engin"

if name.isEmpty{
    print("isEmpty'li lütfen bir isim giriniz.")
}else{
    print("isEmpty'li İsim değişkeni girildi.")
}


if name.count == 0{
    print("count'lu lütfen bir isim giriniz.")
}else{
    print("count'lu İsim değişkeni girildi.")
}

/*
  Swift programlama dilinde "else if" ifadesi, birden fazla koşulu sırayla değerlendirmenizi sağlayan ve bir koşulun doğru olması durumunda belirli bir kod bloğunu çalıştıran bir kontrol yapısıdır. "else if" ifadesi, bir "if" ifadesinin ardından kullanılabilir ve daha fazla koşulun kontrol edilmesine olanak tanır.
 
 */

/*
    if koşul1 {
        // koşul1 doğruysa buradaki kod çalışır
    } else if koşul2 {
        // koşul1 yanlış, koşul2 doğruysa buradaki kod çalışır
    } else if koşul3 {
        // koşul1 ve koşul2 yanlış, koşul3 doğruysa buradaki kod çalışır
    } else {
        // Yukarıdaki tüm koşullar yanlışsa buradaki kod çalışır (isteğe bağlı)
    }
 */

let userAgeIfElse : Int = 23

if userAgeIfElse < 18 {
    print("Kullanıcı reşit değildir.")
}else if userAgeIfElse < 65{
    print("Kullanıcı reşittir ama emekli değildir.")
}else{
    print("Kullanıcı reşittir ve emeklidir.")
}

// Birden fazla kontrol yapmamız gerekiyorsa o zaman mantıksal operatörleri kullanıyoruz.

/*
 Mantıksal Operatörler:

 && : VE (And)
 || : VEYA (Or)
 ! : DEĞİL (Not)
 */

// and operator
if userAgeIfElse < 25 && name == "Engin"{
    print("Kullanıcı 18 yaşından küçük ve adı Engin")
}

// or operator
if userAgeIfElse < 25 || name == "Ahmet"{
    print("Kullanıcı 18 yaşından küçük veya adı Ahmet")
}

// and ve or operatörünü birleştirmek istersek

let a : Int = 5

if userAgeIfElse >= 18 || (name == "Engin" && a == 5) {
    print("Kullanıcı yaşı 18'den büyük eşittir veya adı engin ve a değeri 5")
}

// *********************     *********************

// Switch-case Statement (Switch-case ifadesi)

// if ile aynı kullanımı olan ama daha okunaklı ve esnek kod yazmamızı sağlayan bir yapıdır.

/*
  Belirli bir değeri veya ifadeyi farklı koşullara göre değerlendirmek ve her bir koşula bağlı olarak farklı işlemler
  gerçekleştirmek için kullanılan bir kontrol yapısıdır. "switch" ifadesi içinde, bir değer veya ifade farklı "case" durumlarıyla
  karşılaştırılır ve eşleşen bir "case" durumu bulunursa, o duruma bağlı kod bloğu çalıştırılır.
 */

/*
    switch deger veya ifade {
        case deger1:
            // deger veya ifade deger1 ile eşleşirse bu kod çalışır
        case deger2:
            // deger veya ifade deger2 ile eşleşirse bu kod çalışır
        case deger3:
            // deger veya ifade deger3 ile eşleşirse bu kod çalışır
        // Diğer case durumları
        default:
        // Hiçbir case durumu eşleşmezse bu kod çalışır (isteğe bağlı)
    }
 */

let userAgeSwitchCase = 7

//  switch userAgeSwitchCase{
//  case 0:
//      print("Age is zero")
//  case 1:
//      print("baby")
//  case 17:
//      print("teenager")
//  }

// ben kodumu yukarıdaki gibi bırakırsam eğer derleyici bana hata veriyor.Hata ise "Switch must be exhaustive" yani Switch yapısı kapsamlı olmalıdır diyor bu da şu demek aslında switch'e vermiş olduğumuz değişkenin tüm olasıklarını sağlaması gerekiyor.Biz burada sadece 0,1 ve 17'yi karşıladık burada bu sorunu ortadan kaldırmak için de diğer tüm değerleri kapsaması için switch-case ler'de default parametresi vardır bu aynı if statement'daki else gibidir.Geriye kalan tüm değerleri kapsar.

switch userAgeSwitchCase{
case 0:
    print("Age is zero")
case 1:
    print("baby")
case 17:
    print("teenager")
default:
    print("none")
}

// Mesela biz burada 0'ı aldık 1'i aldık ve 17'yi aldık diğer geri kalan tüm değerlere none demiş olduk.İşte bu kısımda da range kavramı devreye giriyor aslında.Range kavramının önemini anlatmadan önce mesela ben 1'den 6'ya kadar bebek olarak geçmesini istiyorum bunu switch-case'de şöyle aralarına virgül koyarak da yapabiliyoruz.

switch userAgeSwitchCase {
case 0:
    print("age is zero")
case 1,2,3,4,5,6:
    print("baby")
case 17:
    print("teenager")
default:
    print("none")
}

// Gördüğümüz gibi case'lerin aralarına virgül kullanarak istediğimi elde ettim ama kötü bir görüntü oluşturdu bu görüntüyü de range kavramı ile çözebiliriz.

// *********************     *********************

// Range :

// Rangelar, belirli bir başlangıç ve bitiş değeri arasındaki değerleri içerebilen bir veri yapısıdır. Swift'te, "Closed Range" (Kapalı Aralık) ve "Half-Open Range" (Yarı-Açık Aralık) olmak üzere iki tür range bulunmaktadır.

// Closed Range (Kapalı Aralık) :

// Başlangıç değeri ve bitiş değeri dahil olmak üzere belirli bir aralığı temsil eder.

// ... ile ifade edilir.

let closedRange  = 1...5
// 1'den 5'e kadar ve 5 dahil.

// Half-Open Range (Yarı-Açık Aralık) :

// Başlangıç değeri dahil, ancak bitiş değeri dahil değil olan bir aralığı temsil eder.

// ..< ile ifade edilir.

let halfOpenRange = 1..<5

// 1'den 5'e kadar 5 dahil değil.


// Şimdi gelelim switc-case yapısında yapmak istediğimiz şeye...

switch userAgeSwitchCase{
case 0:
    print("age is zero")
case 1..<7:
    print("baby")
case 7..<18:
    print("teenager")
default:
    print("adult")
}


let userNameSwitchCase : String = "Engin"

switch userNameSwitchCase {
case "Engin" :
    print("Name is Engin")
case "Ahmet" :
    print("Names is Ahmet")
default:
    print("Name is undefined")
}

// *********************     *********************

// Loops (Döngüler)

/*
    Belirli bir işlemi veya kod bloğunu bir veya daha fazla kez tekrarlamak için kullanılan bir kontrol yapısıdır. Döngüler, belirli bir
    koşulu veya belirli bir sayıyı kontrol ederek çalışır ve bu koşul veya sayı sağlandığında döngü sona erer.
 */

// for-in loop (for-in döngüsü) :

//  Bir dizi, aralık veya koleksiyon üzerinde gezinmek için kullanılır. Bu döngü, koleksiyonun her öğesini ele alır ve belirtilen kod bloğunu her öğe için çalıştırır.


for i in 0..<10{
   print(i)
}

let forRange = 0..<10

for i in forRange{
    print("ForRange : \(i)")
}

// String bir array(dizi) oluşturduk.

let names : [String] = ["Engin","Abdullah","Elif","Batuhan","x","Enes","Kaan","Çağatay"]

for name in names{
    print("Name: \(name)")
}

// names'teki tüm değerleri sırasıyla name değişkenine atıyor ve daha sonra yazdırıyor.

// peki ben isim batuhan olduğunda bunu ekrana yazdırmak istemiyorum.

// *********************     *********************


// Continue (Devam et)

// Döngülerde kullanılır.Belirli bir koşulu sağlayan durumda döngünün o iterasyonunu atlayıp bir sonraki iterasyona geçmek için kullanılır.

for name in names {
    if name == "Batuhan"{
        continue
    }
    print("Name1: \(name)")
}

// Batuhan'ı atladı ve diğerlerini yazdırdı.

// Break (Kırmak)

// Döngülerle kullanılırlar.Belirli bir koşulu sağlayan durumda döngüyü sonlandırmak için kullanılır.

for name in names {
    if name == "x"{
        break
    }
    print("Name2: \(name)")
}

// x'i gördüğünde direkt olarak döngüyü sonlandırdık.

// While Loop (While Döngüsü)

// While döngüsü, belirli bir koşul doğru olduğu sürece belirtilen kod bloğunu tekrar tekrar çalıştırır. Koşul her döngünün başında değerlendirilir.
var count : Int = 5

while count > 0 {
    print("While count : \(count)")
    count -= 1
}

// Repeat While Loop (Repeat While)

// repeat-while döngüsü, döngü kodunu en az bir kez çalıştırır ve ardından belirli bir koşul doğru olduğu sürece tekrarlar. Koşul, döngü kodunun sonunda değerlendirilir.

count = 5

repeat{
    print("Repeat While Count : \(count)")
    count -= 1
}while count > 0




