import Foundation

// Optionals (Opsiyoneller) :

// Bir türdür ve değeri olmayabilecek bir değişkeni veya sabiti temsil etmek için kullanılır.

// Bir değer optional olarak işaretlenirse, o değer ya bir değere sahip olabilir (değer doludur) ya da hiçbir değere sahip olmayabilir (değer boştur)

// Swift'te bir değeri optional olarak işaretlemek için " ? " işaretini kullanabiliriz.

// Optional aslında bir veri tipidir.Yani nasıl ki Int ve String gibi veri tiplerinden söz edebiliyorsak Optional da bir veri tipidir.Ama onlara göre biraz daha özelleştirilmiş ve özel amaçlarla kullanılan bir veri tipidir.

let intAge : Int = 5
intAge + 5

// Yukarıda age'i Int tanımladım ve 5 ile toplayabiliyorum.

// Ama age diye bir şey elimde henüz olmasaydı.Yani ben bu datayı kullanıcıdan bekliyor olsaydım ya da servisten bekliyor olsaydım o zaman bu age değişkenin değeri henüz olmayacaktı.

// Şimdi datanın kullanıcıdan veya servisten geleceğini düşünürsek o zaman direkt olarak biz değer atamayacağız datayı tanımlayıp bırakmamız gerekiyor.

// let intAge : Int

// yukarıdaki gibi bir tanımlamada yapamayız çünkü o zaman da intAge + 5 işlemini yapamaz çünkü burada da initialization requirement (başlatma gerekliliği) olayı devreye giriyor derleyici hata veriyor.

// işte tam da bu durumda OPTIONAL (OPSİYONEL) kavramı devreye giriyor.

let optionalIntAge : Int?

// yukarıda tanımlamış olduğum şey aslında bir Int değil.Bu aslında Int olabilecek bir değeri tutan bir tip.Bu da tam olarak Int Optional oluyor.Yani ben bu değeri açtığımda içinden Int de çıkabilir boş da çıkabilir.Bunu genelde şöyle anlatırlar.optionalIntAge bir kutu bunu önce açmamız gerekiyor.Bunu açınca içerisinden ya Int çıkacak ya da " nil " (hiç bir şeyi referans etmeyen) dediğimiz boş bir değer çıkacak.

let optionalStringName : String?

// şimdi burada optionalIntAge değerini print ile ekrana yazdıralım.

// print(optionalIntAge)

// initialization requirement olayı opsiyoneller için de geçerli yani bir değişken veya sabit kullanılmadan önce mutlaka değer ataması yapılması gerekiyor.

// o zaman optionalIntAge sabitine bir değer atayalım.

optionalIntAge = 5

// şimdi ekrana yazdıralım.

print(optionalIntAge)

// ekran çıktısında Optional(5) yazıyor. optionalIntAge içerisinde Int barındırmıyor.Int optional barındırıyor.Benim bu içerisindeki Int'ı kullanabilmem için bu Int değeri kutudan çıkarmam gerekiyor.Bunun da çeşitli yöntemleri var.

// ***************     *****************

// Nil Kontrolü Yapıyoruz

if optionalIntAge == nil {
    print("no value")
}else{
    print("\(optionalIntAge)")
}

// Ben nil kontrolü de yapsam burada yine optional(5) yazıyor.Peki ben bu Int değer ile bir işlem yapmak istersem bu Optional'dan kurtulmam lazım.

// Ben bu defa doğum yılını bulmak istiyorum.

/*  if optionalIntAge == nil{
       print("no value")
    }else{
       var birthyear = 2023-optionalIntAge
       print("Birthyear: \(birthyear)")
    }
 */

// Yukarıdaki işlemi yapmaya kalktığımda direkt olarak hata alıyorum.

// Hata mesajında ise Int? veri tipi öncelikle unwrap edilmeli diyor.


// ***************     *****************

// Unwrap (açma) :

// Optional bir değeri, değerine erişmek veya kullanmak için yapılan bir işlemdir.

// Biraz önce kutunun içinden çıkarmaktan bahsetmiştik bu optional değerin kutusunun kapaklarının açılması işlemidir.

// Çeşitli yöntemleri vardır.



// ***************     *****************

// Optional Binding (Opsiyonel Bağlama)

// Optional değerlerin içindeki değerleri güvenli bir şekilde çıkarmak ve kullanmak için kullanılan bir tekniktir.

// Optional binding "if let" veya "guard let" yapılarıyla gerçekleştirilir. Optional değeri kontrol eder, değer nil değilse içindeki değeri yeni bir sabite atar.

// if let ile optional binding

/*
    if let deger = optionalDeger {
        // optionalDeger içinde bir değer varsa, bu değeri "deger" sabiti ile kullanabiliriz
        print("Deger: \(deger)")
    } else {
        // optionalDeger nil ise, burası çalışır
        print("Optional değer nil.")
    }
 */


if let value = optionalIntAge{
    let birthyear : Int = 2023 - value
    print("if let Birthyear: \(birthyear)")
}else{
    print("Optional değer nil")
}


// guard let ile optional binding

// Genelde fonksiyonlar içerisinde kullanılırlar.

/*
        guard let value = optionalDeger else {
 
            // optionalDeger nil ise, bu blok çalışır ve işlem sonlanır
            return
        }
     
        // optionalDeger içinde bir değer varsa, bu değeri "value" sabiti ile kullanabiliriz
        print("Deger: \(value)")
 
 */

// optionalDeger'i kontrol ediyoruz.Eğer optionalDeger nil değilse,değeri value sabitine atarız ve bu değeri kontrol ederiz.Eğer optionalDeger nil ise else bloğu çalışır ve işlemi sonlandırır.

/* guard let value = optionalIntAge else{
     print("optionalIntAge değeri nildir.")
     return
   }

    let birthyear : Int = 2023 - value

    print("Guard let birthyear: \(birthyear)")
*/

// guard let ile  early exit(erken çıkış) yaptığımız bir yapı var. guard let yapısını fonksiyonlarla daha çok kullanacağız.Early exit demesinin sebebi şu guard let syntax'ında ben her zaman return ifadesini kullanmam gerekiyor ve herhangi bir şeyde sıkıntı olursa direkt olarak fonksiyondan çıkabiliyorum.



// ***************     *****************


// nil coalescing operator

// Bir optional değerin nil olması durumunda varsayılan bir değer kullanmamızı sağlayan bir operatördür.Bu operatör, optional bir değeri kontrol etmek ve değeri nil ise bir alternatif değer atamak için kullanılır.

//  " ?? "  nil coalescing operatördür.

// let result = optionalValue ?? defaultValue

// Yukarıdaki örnekte "??" operatörü kullanılarak optionalValue kontrol edilir.Eğer optionalValue nil ise, defaultValue kullanılır.Eğer optionalValue nil değilse optionalValue içerisindeki değer kullanılır.

var optionalIntValue : Int? = nil
let nilCoalescingIntValue : Int = optionalIntValue ?? -1

// nilCoalescingIntValue veri tipinin Int olduğunda dikkat edelim.

print(nilCoalescingIntValue)

// Optional'a neden ihtiyaç var ?

// Programlama dillerinde genelde olmayan değerlerle ilgili çok fazla crash'ler yani uygulama çalışırken çökme yaşanabilir.Bunların önüne geçme için her zaman için elimizde olması olası olan değerler için optional kullanılır.Biraz önce servisten gelen veriden bahsettik mesela bu veri her zaman için gelmeyebilir bu nedenle de eğer siz bu veriyi optional yapmazsanız uygulamanız çökebilir.Bu nedenle de bu veriyi optional yapmak zorunluluktur.

let userName : String = "Engin"

// String'in property'lerine erişebileceğimizi daha önceki derslerde konuşmuştuk burada da first property'sinden bahsetmek istiyorum.

// first property'si String ifadenin ilk karakterini veriyor. Dönüş tipine bakarsak eğer Character? yani optional character dönüyor bana.

// Bunun optional olmasının sebebi basit aslında String ifade boş olabilir bu nedenle de geriye dönüş tipini optional character yapmışlar.

if let firstCharacter = userName.first{
    print(firstCharacter)
}else{
    print("No String Expression")
}


// ***************     *****************

// Optional Chaining

// Optional değerlerle çalışmamızı kolaylaştıran bir özelliktir.Bir optional değerin içerisindeki özelliklere ve yöntemlere güvenli bir şekilde erişmemizi ve çağırmamızı sağlar.

// Bir optional değerin içerisindeki bir özelliğe ve yönteme erişirken "?." operatörünü kullanarız.Eğer optional değer nil ise, optional chaining işlemi hemen sona erer ve nil değeri döner.Eğer optional değer nil değilse, işlem devam eder ve içindeki özellik veya yöntem çağrılır.

userName.first?.description.first?.description

// userName.first eğer ki nil değilse description'a erişecek eğer ki nil se geriye nil dönecek.Description'ında first'i eğer nilse geriye nil dönecek değilse onunda description'a erişecek.


let value2 : Character? =  userName.first?.description.first


// ***************     *****************

// Forced Unwrapping (Zorla Açma)

// Bir optional değeri açmak ve içindeki değeri almak için kullanılan bir işlemdir.Bir optional değeri açmadan önce, optional değerin nil olup olmadığı kontrol edilmek zorundadır.Bunun yerine, "forced unwrapping" operatörü olan " ! " işareti kullanılarak, bir optional değeri açma işlemi gerçekleştirilir.

// ! işaretini kullanarak bir optional'ı açarsak değer artık optional olmaktan çıkar ve normal bir değer haline gelir.Ancak bu optional değer nil ise uygulama çöker(crash) ve bir hata oluşur.Bu nedenle forced unwrapping kullanılırken dikkatli olmak gereklidir.


let name2 : String = "Engin"

// name2.first normalde optional bir değer dönüyor ama ben name2'nin nil olmadığından yüzde yüz emin olduğum için burada forced unwrap kullanabilirim ve değer normal bir değere dönüşür.

print(name2.first!)


let age2 : Int? = 30
print(age2! + 5 )

// Forced unwrapping mümkün olduğunca kullanmamaya çalışacağız.


// ***************     *****************

// Implicitly Unwrapped Optionals

// Bir tür optional değer türüdür.Bu tür optional değerler, normal bir optional değere benzer şekilde nil değeri alabilirler, ancak değerlerine erişirken her zaman optional açma işlemi kullanmanız gerekmez.Tanımlandıkları andan itibaren değerlerine erişebilirsiniz ve değerlerinin nil olup olmadığını kontrol etmek zorunda kalmazsınız.

// Implicitly Unwrapped Optionals, Swift programlama dilinde özellikle bir değer başlangıçta nil olsa da, daha sonra kesinlikle bir değer alacağına emin olduğunuz durumlar için kullanışlıdır.

// age3 aslında bir optional'dır.Ama ben bunu kullanmak istediğim zaman optional açma işlemi uygulamıyorum.

var age3 : Int!

age3 = 5
age3 + 1

// Burada uygulama crash yer.
// age3 = nil
// age3 + 2

// Implicitly unwrapped optionals'ları da   mümkün olduğunca kullanmamaya çalışacağız.


