import Foundation

// Swift'te ios uygulamalar dışında backend uygulamaları da geliştirebiliriz.Vapor framework'ü ile.

// Projemize dışarıdan başka bir modül,kitaplık veya kütüphaneyi eklemek istediğimizde "import" anahtar kelimesini kullanırız.

// Foundation framework'ü temel veri tipleri,koleksiyonlar,dosya işlemleri,metin işleme,tarih ve saat işlemleri gibi temel işlevleri ve araçları içeren bir framework'tür.Swift'in standart kütüphanesinin bir parçasıdır.

// Variables(Değişkenler) ve Constants(Sabitler)

// Değişkenler ve sabitler veri saklama amacı ile kullanılan temel öğelerdir.

// Constants(Sabitler)

// Sabitlere sadece bir kez değer atanabilir ve daha sonra değeri değiştirilemez.

// Sabitler "let" anahtar kelimesi ile tanımlanır.

// let degiskenAdi : veriTipi = deger

let name : String = "Engin"
let age:Int = 23

// name = "Abdullah"
// age = 24
// yukarıdaki şeyleri yaparsam compiler bize hata verir çünkü let bir sabit ve bir kez değer atandıktan sonra değeri değiştirilemez.

// Variables(Değişkenler)

// Değişkenler, program boyunca değeri değiştirilebilen verileri saklamak için kullanılır.

// Değişkenler "var" anahtar kelimesi ile tanımlanır.

var varYear : Int = 2023
varYear = 2024

// let name : String = "Engin"   buradaki  "=" assigment operator(atama operatörü) dür.Bir değişkene veya sabite bir değer atamak için kullanılır.

// String veri tipi metin veya karakter dizilerini temsil etmek için kullanılır.

// Int veri tipi tam sayıları temsil etmek için kullanılır.

// ****************        *********************

// Type Inference (Tür Çıkarımı)

// Bir değişkenin veya sabitin veri tipinin otomatik olarak belirlenmesini ifade eder.Yani değişken ya da sabit tanımlarken veri tipini açıkça belirtmek zorunda kalmadan Swift derleyicisi tarafından otomatik olarak tespit edilir.

var withoutTypeInferenceName : String = "Ahmet Hakan"
var withTypeInferenceName = "Mustafa Emre"

// ****************        *********************

// Type Safety (Tür Güvenliği)

// Tür uyumsuzluğu hatalarını önlemek için kullanılan bir özelliktir.

// Programın çalışma zamanında(run time) değil derleme(compile) zamanında hataları yakalamasını sağlar.

// Veri türü dönüşümlerini kontrol eder.Bir değişkenin veya sabitin türü belirlendikten sonra onun türü değiştirilemez ve yeni bir tür ataması yapılamaz.

var typeSafetyYear : Int = 2023
// typeSafetyYear = "Engin"

// ben yukarıda typeSafetyYear değişkenini Integer olarak tanımladıktan sonra bir alt satırda bu değişkene String bir değer atamak istersem burada derleyici bana hata verir.

// ****************        *********************

// Initialization Requirement or Initialization Obligation (Başlatma Gerekliliği)

// Swift'te bir değişkenin veya sabitin kullanılmadan önce mutlaka bir değer atanması gerekliliğini belirtir.

let initalizationX : Int
initalizationX = 5
print(initalizationX)

// Yukarıda kullanmadan önce değer ataması gerçekleştirdik ama aşağıda değer atamadan kullanmaya çalıştığımız için kullanmadan önce başlatınız gibi bir hata alıyoruz.İşte bu da tam olarak Initalization Requirement kavramını karşılıyor.

// let initalizationY : Int
// print(initalizationY)
// initalizationY = 10

// ****************        *********************

// Basic Types (Temel Türler)

// Double veri tipi ondalıklı sayılarda kullanılan veri tipidir.

let amount : Double = 123.45
print(amount)

// Bool veri tipi de true ya da false değerler alan veri tipidir.

let isDead : Bool = true
print(isDead)

// ****************        *********************

// Basic Operators (Temel Operatörler)

// 1- Aritmetik Operatörler

// + : Toplama
// - : Çıkarma
// * : Çarpma
// / : Bölme
// % : Mod (Bölme işleminin kalanını verir)

// 2- Atama Operatörleri:

// = : Değişkenlere veya sabitlere değer atama.
// += : Toplama ve atama
// -= : Çıkarma ve atama
// *= : Çarpma ve atama
// /= : Bölme ve atama
// %= : Mod ve atama

// 3- Karşılaştırma Operatörleri:

// == : Eşit mi?
// != : Eşit değil mi?
// < : Küçük mü?
// > : Büyük mü?
// <= : Küçük veya eşit mi?
// >= : Büyük veya eşit mi?

// 4- Mantıksal Operatörler:

// && : VE (And)
// || : VEYA (Or)
// ! : DEĞİL (Not)

// = operatörü atama operatörüdür.

let number1 = 5
let number2 = 2

number1 + number2
number1 - number2
number1 * number2
number1 / number2

// number1 / number2 işleminin sonucu 2.5 çıkması gerekirken 2 çıkıyor.Bunun nedeni her iki değer de integer'dır ve iki tam sayının bölümünden yine geriye kalan bir tam sayıdır ve ondalık kısmı kesilir.

// Eğer ki 2.5 elde etmek istiyorsak burada type casting (tür dönüşümü) yapmamız gereklidir.Swift'te type casting şöyle yapılıyor :

// donusturmekIstedigimizVeriTipi(donusturmekIstedigimizDegisken)

let divisionResult = Double(number1) / Double(number2)
print(divisionResult)


// ****************        *********************

// String

// Metin veya karakter dizilerini temsil etmek için kullanılan veri tipidir.

// Single Line String (Tek Satırlık String) :

// Tek satırlık bir string ifade oluşturmak için çift tırnak ( " " ) kullanılır.

let userName : String = "Engin"

// Stringler karakterlerden oluşurlar.Yani "Engin" string ifadesinin her bir harfi bir karakterdir.

// Multiline String (Çoklu Satırlık String) :

// Çoklu satırlı bir string oluşturmak için üç tırnak (""" """) kullanılır.

let description : String = """
Selamlar
Bu çoklu satırlı bir string
ifadedir.
"""

print(description)

// String Concatenation (String Birleştirme)

var userNameConcatenation : String = "Engin"

var userSurnameConcatenation:String = "Sirkeoğlu"

// + operatorü ile birleştirme

"Mr. " + userNameConcatenation + " " + userSurnameConcatenation

// append methodu ile birleştirme

var userNameConcatenation2 : String = ""

userNameConcatenation2.append("Engin")
userNameConcatenation2.append(" Furkan ")

// userNameConcatenation2 += "Ferman" bu ifade ile şu aynıdır.   userNameConcatenation2 = userNameConcatenation2 + "Ferman"

userNameConcatenation2 += "Ferman"
userNameConcatenation2 = userNameConcatenation2 + " Serhat"

// ****************        *********************

// String bir ifadenin karakter sayısını (uzunluğunu) döndürür.

userNameConcatenation.count

// String bir ifadenin boş olup olmadığını kontrol eder.Boşsa true , doluysa false döndürür.

userNameConcatenation.isEmpty

// ****************        *********************

// String Interpolation

// Bir String'in içerisine değişkenlerin ya da başka ifadelerin eklenmesine ve metinle birleştirilmesine olanak tanır.

//   "\()" ifadesi kullanılarak yapılır.

let count : Int = 5

print("My age is \(count) \(7*5) \(123.45) \(true)")









