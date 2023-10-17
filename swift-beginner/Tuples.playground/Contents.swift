import Foundation

// Tuples

// Farklı veri türlerini bir araya getiren ve gruplayan bir veri yapısıdır.

// () ifadesi bir tuple'ı ifade eder ve içerisine virgülle ayırarak istediğimiz türde veri yazabiliriz.

// İndeksleme ile Tanımlama

let tuple = (404,"not found",23.23,true)

// Birinci eleman Int,ikinci eleman String,üçüncü eleman Double,dördüncü eleman Bool

var error : (Int,String) = (404,"not found")

// Aslında tuple'ın veri tipi (Int,String) ' dir.

// Elemanlara erişmek için elemanların sırasına göre index kullanabiliriz.

error.0
error.1

let (code,message) = error
code
message

// Diyelim ki code'a ihtiyacım yok sadece mesajı almak istiyorum o zaman alt çizgi kullanarak bunu halledebilirim.

let (_,message2) = error
print(message2)

// İçerisindeki verileri değiştirelim.

error.0 = 401
error.1 = "Unauthorized error"
error


// Nested Tuples (İç içe geçmiş tuple)

let nestedTuple = (1,"Engin",true,3.4,("Engin","Sirkeoğlu",234))

// Yukarıdaki ifadenin veri tipi (Int,String,Bool,Double,(String,String,Int)) 'dir

// Veri sayısı arttıkça erişim sorunu ortaya çıkıyor.Bu nedenle 2 ya da 3 item'ı geçmeyen durumlarda tuple kullanılabilir.

// ***************         ***************

// İsimlendirilmiş Elemanlarla Tanımla

let person = (name:"Engin",age:23,isStudent:true)

// Elemanlara erişim isimlerle ve indexlerle gerçekleşir.



// İsimlerle erişim
person.name
person.age
person.isStudent

// İndex ile erişim
person.0
person.1
person.2

// Tuple'lar, özellikle fonksiyonlardan birden fazla değer döndürmek veya ilişkisiz verileri gruplandırmak için kullanışlıdır.










