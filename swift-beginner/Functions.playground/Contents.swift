import Foundation

// Functions (Fonksiyonlar)

// Bir işlemi gerçekleştiren ve başka bir yerde birden çok kez çağrılabilen kod bloklarıdır.Kodun daha modüler,okunaklı ve tekrar kullanılabilir olmasını sağlar.

// Function Tanımlamak

/*
 
    func functionName(parameters: ParameterType) -> ReturnType {
        // Fonksiyonun işlevi burada tanımlanır
        return returnValue // Opsiyonel olarak bir değer döndürebilir
    }
    
    func: Fonksiyonun tanımlandığını belirten anahtar kelime.
    functionName: Fonksiyonun adı. Bu, fonksiyonu çağırmak için kullanılır.
    parameters: Fonksiyonun aldığı giriş parametreleri. Parametreler fonksiyonun işlevini yerine getirirken kullanılır.
    ParameterType: Parametrelerin veri türünü belirtir.
    ReturnType: Fonksiyonun dönüş değerinin veri türünü belirtir.
 
 */


// Parametresiz ve Geri Dönüş Değeri Olmayan (Void) Fonksiyonlar :

func greetMe(){
    let sayHello = "Hello!"
    print(sayHello)
}

greetMe() // Fonksiyon çağırmak

// Parametre Alan ve Geri Dönüş Değeri Olmayan (Void) Fonksiyonlar :

func greetMeWithParameter(name:String){
    print("Hello \(name)!")
}

greetMeWithParameter(name: "Engin")

// Parametre ve Argument Arasındaki Fark :

// Parametre : Fonksiyonun girişlerini temsil eden değişkenlerdir.

// Argument : Fonksiyonu kullanırken girişlere verilen değerlerdir.

// Mesela yukarıdaki örnekte name parametre Engin argumenttir.

func greetMeWithTwoParameter(name:String,age:Int){
    print("Hello \(name)! my age is \(age)")
}

greetMeWithTwoParameter(name: "Batuhan", age: 23)
greetMeWithTwoParameter(name: "Oğuzhan", age: 19)

// Parametresiz ve Geri Dönüş Değeri Olan Fonksiyonlar :

func greetMeWithoutParameterAndReturn() -> String {
    return "Say Hello!"
}

let sayHello = greetMeWithoutParameterAndReturn()
print(sayHello)

// Parametre Alan ve Geri Dönüş Değeri Olan Fonksiyonlar :

func greetMeWithParameterAndReturn(name:String,age:Int) -> String{
    return "!!!! Hello \(name) my age is \(age) !!!!!"
}

let text = greetMeWithParameterAndReturn(name: "Ahmet", age: 32)
print(text)

// Fonksiyonlara parametre verirken fonksiyonun signature(imza)'ına göre vermek zorundayız.

// greetMeWithParameterAndReturn(age: 32,name: "Ahmet")   gibi yer değiştirme mümkün değil.Fonksiyonların signature'leri sabittir buna göre çağrılmak zorundadır.


/* Swift'te fonksiyon parametreleri varsayılan olarak (constant) DEĞİŞTİRİLEMEZDİR.Yani, bir fonksiyon içinde bir parametrenin değerini değiştirmeye çalışırsanız, derleme hatası alırsınız.

 
    var valueToChange = 5

    func changeValue(value:Int){
        value = 10
    }
 
    Yukarıdaki gibi yaparsak compiler bize hata verecektir.value bir constant değer olduğu için bu hatayı alıyoruz.

    changeValue(value: valueToChange)

*/

// Fonksiyonlar Optional'da dönebilirler.

let feet : [String:Int] = ["Human":2,"Chicken":2,"Cow":4]

func feetCount(species:String) -> Int?{
    return feet[species]
}

feetCount(species: "Human")
feetCount(species: "Fish")


// External ve Internal Label (Dış ve İç Etiket) :

// Fonksiyonların dışarıdan nasıl çağrılacağını ve içeride nasıl kullanılacağını düzenlemek için kullanılır.

// External Label (Dış Etiket) : Bir fonksiyonun dışarıdan nasıl çağrılacağını belirleyen etikettir.

// Internal Label (İç Etiket) : Bir fonksiyonun içerisinde kullanılacak olan etikettir.

// Swift default olarak external ve internal label'i aynı yapar ama istersek aşağıdaki gibi değiştirebiliriz.

// Aşağıdaki fonksiyonda person ve from external label'dır. name ve hometown internal label'dır.

func defineVisitor(person name:String,from hometown:String){
    print("Merhaba \(name)! \(hometown) şehrinden geliyorsun değil mi")
}

defineVisitor(person: "Engin", from: "Sakarya")

func calculateArea(width w:Double,height h:Double)->Double{
    return w*h
}

calculateArea(width: 2, height: 5)

// External label olarak " (alt çizgi) _ "  kullanılması, bu parametrenin çağrıda bir dış etikete sahip olmadığını ve adının kullanılmaması gerektiğini ifade eder.

// Mesela sum adlı bir fonksiyonun illa ki toplama yapacağı bellidir ve iki sayı alır toplar bu nedenle de bunun için external label'ı alt çizgi yapabiliriz çünkü dışarıdan çağıran kişi elbette bunun toplama yapacağını bilir.
func sum(_ a:Int,_ b:Int)->Int{
    return a+b
}

sum(3,5)

// Fonksiyon parametrelerine default bir değer verebiliriz.Default değer vermek fonksiyonun çağrılmasında parametrenin değeri belirtilmediğinde kullanılacak bir değer atamak için kullanışlıdır.

// Aşağıdaki fonksiyon çağrıldığında name parametresine değer atanmazsa "Dünya" kullanılacaktır.

func greet(name: String = "Dünya") {
    print("Merhaba, \(name)!")
}

// Default değer verdiğimiz için illa bizden değer istemiyor.
greet()
// Değer verirsek de vermiş olduğumuz değeri kullanıyor.
greet(name: "Ayşe")


// Nested(İç içe) Fonksiyonlar :

// Dışarıdan erişilemezler ve yalnızca kapsayıcı fonksiyon içerisinde kullanılırlar.

let list = [("Ahmet",27),("Engin",37),("Mahmut Emin",21)]

func greetAll(people:[(String,Int)]){
    
    func greetPerson(name:String,age:Int){
        print("Hello \(name) your age is \(age)")
    }
    
    for person in people {
        greetPerson(name:person.0,age:person.1)
    }
}

greetAll(people: list)

// Swift'te fonksiyon parametrelerinin varsayılan olarak (constant) yani değiştirilemez olduğunu söylemiştik.Fonksiyon body'sinde bunlara farklı değerler atayamayacağımız söylemiştik.

/*
    func sum (_ a:Int,_ b:Int)->Int{
        a=5
        b=6
        return a+b
    }

    Yani fonksiyon içerisinde bu değerleri değiştiremeyiz.
 
 */


// Peki ben bu değerleri değiştirmek istiyorsam...

// inout parameter

// Bir fonksiyona parametre olarak geçirilen değerlerin fonksiyon içinde değiştirilebilmesini sağlayan özel bir türdür.

func swapValues(_ a: inout Int,_ b: inout Int){
    let temp = a
    a=b
    b=temp
}

// inout parametrelerde direkt olarak referans(adres) ile işlem yapıldığı için mecburen değişken oluşturmak zorundayım.
var value1 = 10
var value2 = 20

// "in-out" parametreleri kullanırken çağrıda '&' (ampersand) operatörünü kullanmalısınız.

// &(ampersand) Bu, fonksiyona belirli bir değişkenin referansını (adresini) iletiyor demektir.

print("before change value1: \(value1)  value2: \(value2)")
swapValues(&value1, &value2)
print("after change value1: \(value1)  value2: \(value2)")


// Function Types (Fonksiyon Tipleri)

// Her fonksiyonun aldığı parametrelerin türlerinden ve geri dönüş değerinin türünden oluşan bir fonksiyon tipi vardır.

// Fonksiyonları bir değişkene ya da sabite atayabiliriz,parametre olarak fonksiyonlara verebiliriz,fonksiyonun geri dönüş tipi olarak kullanılanabiliriz.

func multiply(number1 a:Int,number2 b:Int) ->Int{
    return a*b
}

// Yukarıdaki fonksiyonun tipi : (Int,Int) -> Int

let myMultiplyFunction = multiply

print("Multiply Result: \(myMultiplyFunction(3,4))")

func square(value a:Int) ->Int{
    return a*a
}

print("Square Result: \(square(value: 4))")


func transform(list:[Int]) -> [Int]{
    var retList = [Int]()
    for value in list{
        let value = square(value: value)
        retList.append(value)
    }
    return retList
}


var list2 = [3,4,5,2,6,8,12,10]
print(transform(list: list2))

// Şimdi diyelim ki biz verdiğimiz sayının negatiflerini almak istiyoruz ve aslında bu fonksiyonunda geri dönüş tipi square fonksiyonu ile aynı (Int) -> Int bu nedenle de ben aslında bunu transform'a parametre olarak versem iki fonksiyon yazmak yerine tek fonksiyonla bunu halletmiş olurum.

func minus(_ a:Int)->Int{
    return -1*a
}

func transform2(list:[Int],operation:(Int)->Int) -> [Int]{
    var retList = [Int]()
    for value in list{
        let value = operation(value)
        retList.append(value)
    }
    return retList
}


print(transform2(list: list2, operation: minus))
print(transform2(list: list2, operation: square))

// Enum içerisine fonksiyonlar tanımlanabiliyor.

enum Direction{
    case north,west,east,south
    
    func writeName(){
        switch self{
            
        case .north:
            print("n")
        case .west:
            print("w")
        case .east:
            print("e")
        case .south:
            print("s")
        }
    }
}

var direction : Direction = .north
direction.writeName()
