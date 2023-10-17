import Foundation

// Enum - Enumeration (Numaralandırma) :

// Belirli bir grup ilişkili değeri temsil etmek için kullanılan veri türüdür.

// Enum Tanımlama

// comprehensive (kapsamlı) tanımlama

/*
 enum Direction {
    case north
    case west
    case east
    case south
}
 */

// compact (daraltılmış) tanımlama

/*
 enum Direction {
    case north,west,east,south
}
 */

enum Direction{
    case north
    case west
    case east
    case south
}

// Enum'ı Kullanma

// var direction : Direction = Direction.east

// var direction : Direction = .east

// var direction  = Direction.east

// Yukarıdaki şekillerde tanımlanabilir.


var direction : Direction = .west
print(direction)

direction = .east
print(direction)

// if-statement

if direction == Direction.east{
    print("if statement doğu")
}else if direction == .west{
    print("if statement batı")
}

// direction == Direction.east   ile     direction == .east      aynıdır.


// switch-statement

// çok fazla if,else if,else if şeklinde ilerleme kötü bir görünüm verdiği için switch-statement kullanıyoruz.

/*
    switch direction{
    case .east:
        print("switch statement doğu")
    case .north:
        print("switch statement kuzey")
    case .south:
        print("switch statement güney")
    case .west:
        print("switch statement batı")
    }
 
 Normalde switch-case yapısında tüm durumların karşılanması için default'u da kullanıyorduk ama burada zaten tüm durumları karşıladığımız için default kullanmamıza gerek kalmıyor.Yukarıya eğer biz default'u eklersek derleyici bize hata verecektir.
 
    switch direction{
    case .east:
        print("switch statement doğu")
    case .north:
        print("switch statement kuzey")
    }
 
 Eğer yukarıdaki gibi olsaydı o zaman default kullanmak zorunda kalırdık çünkü tüm durumları karşılamıyor.Sadece east ve north durumunu karşılıyor bu nedenle de default kullanmak zorunda kalırdık.
 
 */

switch direction{
case .east:
    print("switch statement doğu")
case .north:
    print("switch statement kuzey")
case .south:
    print("switch statement güney")
case .west:
    print("switch statement batı")
}


switch direction{
case .east,.west :
    print("Horizontal")
case .north,.south :
    print("Vertical")
}

// Tüm case'leri kabul etmek istiyorsak switch-case kullanmalıyız.Bazı case'leri kabul edeceksek o zaman da if statement kullanmalıyız.

// Enumlar kod okunurluğunu arttırıyor.Enumlar olmasaydı bu durumları sayısal ifadelerle temsil etmek zorunda kalabilirdik ve bu da karmaşıklığıa yol açabilirdi.

let north = 0
let south = 1
let east  = 2
let west  = 3

// yukarıdaki gibi bir tanımlama ortaya çıkabilirdi.Bu numaralandırmaları takip etmek zorunda kalacaktık ve karşılaştırmalarda zorlanabilirdik ayrıca kodun bakımı da zorlaşacaktı çünkü ben enum'uma yeni bir değer eklediğimde bunu küçük bir projede şu an bulmak kolay ama büyük bir projede bulmak pek mümkün olmayabilir.

// diyelim ki kullanıcı bir seçim yaptı ya da api'dan bir değer geldi.

let valueDirection = 3

switch valueDirection{
case 0 :
    print("Enum olmasaydı switch case kuzey")
case 1 :
    print("Enum olmasaydı switch case güney")
case 2 :
    print("Enum olmasaydı switch case doğu")
case 3 :
    print("Enum olmasaydı switch case batı")
default:
    print("Enum olmasaydı undefined direction")
}

// mesela yeni bir yön eklenmiş olsa burada yön ile ilgili işlem yapılan tüm ifadeleri kontrol etmek durumunda kalacağız bu küçük projede bulmak kolay ama büyük bir projede bunu bulmak çok zorlaşabilir.Ama enum olduğu zaman bunu yapmak çok kolay çünkü enum'a yeni bir değer eklediğim anda direction enum'ını kullandığım tüm şeyler hata verecek mesela switch-case'ler hemen hata verecekler.Bu nedenle enum önemli bir veri tipidir.

enum Vehicle {
    case bicycle,car,plane
}

enum Gender{
    case male,female,nonbinary
}

enum UserRole{
    case admin,user,restricted
}

// ******************        ****************

// CaseIterable

// CaseIterable protokolü, bir enum türünün tüm durumlarıni bir dizi içinde toplamak ve bu durumların tümünü sıralı bir şekilde elde etmemizi sağlayan bir protokoldür.Özellikle enum'un tüm durumlarını dolaşmanız gereken durumlar için faydalıdır.

// CaseIterable protokolünü kullanmak için ;

// enum EnumName : CaseIterable           diyip daha sonra case'lerimizi yazmamız gerekiyor.

// CaseIterable protokolünü uyguladıktan sonra  " EnumName.allCases "  diyerek enum'ın tüm durumlarına erişim sağlayabiliriz.


enum CaseIterableUserRole : CaseIterable{
    case admin,user,restricted
}

// Enum'ımız içerisinde kaç adet case olduğunu alabiliriz.

print("CaseIterableUserRole Count: \(CaseIterableUserRole.allCases.count)")

// Enum'ımız içerisindeki tüm değerleri dolaşabiliriz.

for role in CaseIterableUserRole.allCases{
    print("Role: \(role)")
}

// ******************        ****************

// Biraz önce enum'lar olmasaydı diye konuşmuştuk.Aslında enum'ların olmadığı bir alan var ve bu alan servislerdir.Network üzerinden bize gelen değerler UserRole gibi bir değer değil çünkü bunlar bizim tanımlamış olduğumuz değerlerdir ve bunların network üzerinde bir karşılıkları yoktur.Servis katmanını yazan kişi kendi uygulaması üzerinde bir Enum tanımlamış olabilir biz de kendi uygulamamızda bir Enum tanımlamış olabiliriz ama bunu bir araya getirmek için arada bir Int,String gibi ortak olan bir veri tipi kullanmak gerekiyor.

// Raw Value (Ham Değer)

// Raw value, her durum için önceden tanımlanmış sabit bir değerdir.Raw value'lar genellikle String ve Int gibi belirli veri türleriyle ilişkilendirilirler.

// Raw value'lar, özellikle dış kaynaklarla (örneğin, API yanıtları veya kullanıcı girdileri) iletişim kurarken veya enum durumları arasında dönüşüm yaparken kullanışlıdır.


// Int Raw Value ile Enum :

/*
 
 enum IntRawValueUserRole : Int{
     case admin,user,restricted
 }
 
 böyle bırakırsak case'lerimize default olarak değerler atanır.
 admin için 0, user için 1, restricted için 2 değerleri atanır default olarak.
 
 */

enum IntRawValueUserRole : Int{
    case admin,user,restricted
}

// Raw value ne işe yarıyor diyecek olursak eğer ; servisten direkt olarak UserRole alamayacağım için bana bir integer değer gelecek ben de o gelen integer değeri kendi tanımlamış olduğum UserRole'e dönüştürmüş olacağım.


let userRole = IntRawValueUserRole(rawValue: 2)
print(userRole)

// rolü yazdırmaya çalıştığımda optional olarak çıktı alıyorum.Optional olmasının sebebini hemen basit bir örnekle açıklayalım rawValue değeri benim elimde ben orayı 7 girmiş olsaydım benim IntRawValueUserRole'ümde 7 ye karşılık gelen bir case olmadığı için bana nil dönecektir.

// Enum'ı rawValue ile oluşturmaya çalıştığımda bana geriye dönen değer " optional " olur.

let userRole2 : IntRawValueUserRole? = IntRawValueUserRole(rawValue: 1)

if let role = userRole2{
    print("Raw Value User Role: \(role)")
}

// Ben kendi uygulamamdaki veriyi bu sefer API'ya yollayacağım o zaman da Enum'dan rawValue'ya dönüşüm yapmam gerekiyor.

print("Restricted Raw Value'ye Erişim : \(IntRawValueUserRole.restricted.rawValue)")

// " degiskenAdi.rawValue " diyerek direkt olarak rawValue'ya erişim sağlayabiliyorum.

if let roleRawValue = userRole2?.rawValue{
    print("User Role Raw Value: \(roleRawValue)")
}


// String Raw Value ile Enum :

/*
 
 enum StringRawValueGender:String{
     case male,female,nonbinary
 }

 böyle bırakırsak case'lerimize default olarak değerler atanır.
 male için "male" , female için "female" , nonbinary için "nonbinary" değerleri atanır.
 
 */

enum StringRawValueGender:String{
    case male="M",female="F",nonbinary="N"
}

let gender :StringRawValueGender? = StringRawValueGender(rawValue: "F")

if let tempGender = gender{
    print("Raw Value Gender : \(tempGender)")
}


// ******************        ****************

// Associated Value (İlişkili Değer)

// Enum durumlarına ek bilgi veya veri taşımamızı sağlar.Farklı enum durumlarının farklı veri türlerini depolamasına ve bu verilere erişmesine izin verir.


enum AssociatedValueUserRole{
    case admin(adminLevel:Int)
    case user(isRestricted:Bool)
    case restricted(reason:String)
    
    // case restricted(String) de diyebilirdik ama genelde yukarıdaki gibi bir kullanım mevcuttur çünkü böyle yaparsak kullanacak olan insanlar string vericem ama neden veriyorum gibi bir ikileme düşebilirler.
}

// admin ve user'ı aldık ama diyelim ki restricted benim için beklenmeyen bir şey ben burada bir tane değer istiyorum yani bu hesap restricted olmuş ama neden restricted olmuş işte tam da burada devreye associated value devreye giriyor.


var associatedValueUserRole = AssociatedValueUserRole.restricted(reason: "banned")
print(associatedValueUserRole)

// associated value olan enum'larda switch-case ifadeleri biraz daha farklı oluyor.

switch associatedValueUserRole{
case .admin:
    print("Associated Value Admin")
case .user:
    print("Associated Value User")

// case .restricted(let reason):
// aşağıdaki şekilde de yazılabilir yukarıdaki gibi de yazılabilir.
    
case .restricted(reason:let reason):
    print("User is restricted because \(reason)")
}

// Eğer ki benim bu kısımda reason'a ihtiyacım yoksa yani reason ile ilgilenmiyorsam restricted olup olmadığına bakıyorsam direkt olarak .restricted'ı da kullanabilirim.

/*
    switch associatedValueUserRole{
    case .admin:
        print("Associated Value Admin")
    case .user:
        print("Associated Value User")
    case .restricted:
        print("User is restricted")
    }
 */

// Şimdi diyelim ki ben kullanıcı restricted olduğu zaman reason'ının banned ve kicked olduğu durumlarda farklı case'lere sokmak istiyorum.

switch associatedValueUserRole{
case .admin :
    print("Associated Value Admin")
case .user :
    print("Associated Value User")
case .restricted(let reason):
    if reason == "banned"{
        print("BANNED")
    }else{
        print("KICKED")
    }
}

// Yukarıdaki gibi de yapılabilir ama Burada bir diğer anahtar kelime olan Where keyword'ünün önemini göreceğiz.

// ******************        ****************

// Where Keyword'ü

// Switch ifadesi içerisinde ek koşullar eklemek ve daha spesifik bir duruma veya değere göre işlem yapmak için kullanılabilir.

switch associatedValueUserRole{
case .admin:
    print("Where admin")
case .user:
    print("Where user")
case .restricted(let reason) where reason == "banned":
    print("Where BANNED")
case .restricted(let reason) where reason == "kicked" :
    print("Where KICKED")
case .restricted:
    print("Where restricted")
}

// UserRole'a bir property ekleyebilir miyiz

// ******************        ****************

// Enum'a property ekleme

enum PropertyUserRole{
    case admin
    case user
    case restricted(reason:String)
    
    // computed property : her erişildiğinde yeniden hesaplanır ve bir değer döndürür.
    // self aslında diğer programlama dillerindeki this ile aynı anlamı taşıyor.Yani o an ki nesneyi ifade ediyor.
    var isBanned : Bool {
        switch self{
        case .restricted(let reason) where reason == "banned" :
          return true
        default:
            return false
        }
    }
}


let propertyUserRole = PropertyUserRole.restricted(reason: "banned")
print(propertyUserRole.isBanned)

let propertyUserRole2 = PropertyUserRole.user
print(propertyUserRole2.isBanned)


// ******************        ****************

// Optional'larda enum'lar üzerine inşa edilmişlerdir.

let age : Int? = 23


switch age{
case .none:
    print("Value is empty")
case .some(let value):
    print("Age is \(value)")
}

// Yukarıda da görüldüğü üzere optional'lar aslında bir enum'dır.

// none ve some değerleri var.Some içerisinde alt çizgi var bu alt çizgi şuna karşılık geliyor burada bir değer var ve ben bunu yok sayıyorum ama biz burada yok saymayacağız kullanacağız.

// case none : ifade eğer nil ise giriyor

// case some : ifade içerisinde bir değer varsa giriyor.

