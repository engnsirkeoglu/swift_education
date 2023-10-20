import Foundation

// Array-Set

// Array(Dizi)

// Aynı türden birden fazla değeri saklayabilen veri yapısıdır.Koleksiyon türüdür.Sıralıdır yani öğeler belirli bir sıra içinde saklanırlar.

// Array Tanımlama

// var diziAdi : [ElemanTipi] = [Elemanlar]
// var diziAdi = [Elemanlar]

// Yukarıdaki oluşturmalara " Array Literal " denir.

let numbers : [Int] = [123,54,123,12,12,12,234]
print(numbers)

let students : [String] = ["Engin","Batuhan","Enes","Serhat","Ali"]
print(students)

let numbersTypeInference = [123,54,123,12,12,12,234]
let studentsTypeInference = ["Engin","Batuhan","Enes","Serhat","Ali"]


// Array'lerde Elemanlara Erişim

// Swift'te bir dizideki elemanlara ulaşmak için köşeli parantezler içinde elemanın indisini kullanabilirsiniz.Dizi indisleri 0'dan başlar, yani dizinin ilk elemanının indisi 0, ikincisi 1, üçüncüsü 2 ve böyle devam eder.

print(numbers[0])

// Eğer bir dizide olmayan bir indexteki elemana erişmeye çalışırsanız, Swift "Index out of range" hatası verecektir. Bu hata, dizinin belirtilen indisini geçersiz bir aralıkta olduğu ve bu indis ile bir elemana erişmenin mümkün olmadığı anlamına gelir. Bu hatanın nedeni, dizinin sınırları dışında bir elemana erişme girişiminde bulunmanızdır.

// Bu nedenle de array'in herhangi bir indexine erişmek istediğimizde bu index'in array'de var olup olmadığına bakmamız gerekiyor.Bunu da " count " property'si ile yapıyoruz.

if students.count > 1{
    print(students[1])
}

// Belirli bir elemanı belirli bir sayıda içeren bir dizi oluşturmak istiyorsak o zaman " Array(repeating:_,count:Int,) " initalizer'ini kullanıyoruz.repeating parametresi hangi elemanı oluşturacağını belirtiyor.Count ise kaç adet olacağını belirtiyor.

let items = Array(repeating: "Engin Sirkeoğlu", count: 5)
print(items)

// Array içerisindeki elemanları değiştirmek.

// arrayName[degistirilecekIndex] = deger

var students2 : [String] = ["Engin","Ahmet","Ferhat","Abdullah"]
students2[2] = "Samet"
print(students2)

// students2 array'inde 4 eleman var ve erişebileceğim maksimum index 3'tür onun dışındaki bir index'e erişip değiştirmeye çalışırsam Index out of range hatasını alırım yukarıda bahsetmiştik.

// Aynı zamanda ben students2[4] = "Mehmet" gibi olmayan bir indexe böyle eleman ekleyemem bunun için farklı method'lar var.

// Array'lere Eleman Ekleme

// Bir dizinin sonuna eleman eklemek için " append() " kullanabiliz.

students2.append("Zeynep")
print(students2)

// Bir dizinin belirli bir indeksine eleman eklemek için " insert(newElement: at:) " newElement eklenecek değeri at ise hangi index'e ekleneceğini ifade ediyor.Üzerine yazma gibi bir işlem yok burada.

students2.insert("Duygu", at: 3)
print(students2)

// Bir array'i başka bir array'e ekleme işlemi

// += Operatörü ile bir dizinin sonuna başka bir diziyi ekler

students2 += ["x","y","z"]
print(students2)

// append(contentsOf:) bir dizinin sonuna başka bir diziyi ekler

students2.append(contentsOf: ["w"])
print(students2)

// Bir dizinin boş olup olmadığını kontrol etmek için isEmpty adlı bir method kullanabilirsiniz. Bu yöntem, bir dizi boşsa true, aksi takdirde false döndürür.

if students2.isEmpty{
    print("no student")
}else{
    print("there are students")
}

// Boş bir dizi tanımlama

// var emptyArray : [ElemanTipi] = []
// var emptyArray = [ElemanTipi]()
// var emptyArray = Array<ElemanTipi>()

var emptyArray : [Int] = []
var emptyArray2 = [Int]()
var emptyArray3 = Array<Int>()

print(emptyArray.isEmpty)
print(emptyArray2.isEmpty)
print(emptyArray3.isEmpty)

// Range'leri kullanarak dizinin belirli aralıklarına erişebiliriz.

// Mesela ben 1,2 ve 3.index'teki ifadelerin değişip tek bir tane x olmasını istiyorum.

var students3 : [String] = ["Engin","Mehmet","Ahmet","Zeynep","Kaan"]
students3[1...3] = ["x"]
print(students3)

// Mesela ben 1,2 ve 3.index'teki ifadelerin silinmesini istiyorum.
var students4 : [String] = ["Engin","Mehmet","Ahmet","Zeynep","Kaan"]
students4[1...3] = []
print(students4)


// Array'den eleman silmek

// remove(at:) yöntemi : diziden belirli bir indeksteki öğeyi silmenizi sağlar.

var employees : [String] = ["Engin","Serkan","Çağatay","Kaan","Salih","Enes"]

employees.remove(at: 1)
print("Employees : \(employees)")

// Iteration (Yineleme) : Bir dizi içerisindeki değerleri dolaşmak.

// for-in döngüsü

for employee in employees{
    print("Employee: \(employee)")
}

// enumerated() fonksiyonu

// Her öğenin dizindeki indeksini de almanıza olanak tanır. Bu, öğelerin hem değerlerine hem de indekslerine erişmenizi sağlar.

for (i,employee) in employees.enumerated(){
    print("Index: \(i)  Employee Name: \(employee)")
}

// index'e erişmenin bir başka yolu daha var o da array'in count'u üzerinden gitmek.Ama yine de enumerated daha yaygın olarak kullanılır.

for index in  0..<employees.count {
    print("Index : \(index)  Employee Name: \(employees[index])")
}

// forEach() fonksiyonu

employees.forEach { employee in
    print(employee)
}

// *******************        **********************

// Set(Küme)

// Benzersiz öğeleri içeren bir koleksiyon türüdür.Set'teki öğelerin her biri yalnızca bir defa bulunabilir.Set öğelerin sırasız(unordered) olduğu bir veri yapısıdır.

// Set'in array'den 2 tane farkı vardır.

// 1-Unique(Tekil) olması : benzersiz öğeler içerir.

// 2- Unordered(Sırasız) olması

var friends : [String] = ["Ahmet","Kaan","Çağatay","Kaan"]
print(friends)

// Yukarıdaki friends objesinin veri tipi hala array

// Set Tanımlama

// var setAdi : Set<SetVeriTipi> = [Elemanlar]

var friends2 : Set<String> = ["Ahmet","Kaan","Çağatay","Kaan"]
print(friends2)

// Yazdırdığımız zaman unordered olduğunu ve unique olduğunu görüyoruz.

// Set'e Eleman Ekleme

// insert() methodunu kullanarak eleman ekleyebiliriz.

friends2.insert("Mehmet")
print(friends2)

// Set'te Elemanlara Erişmek

for friend in friends2{
    if friend == "Kaan"{
        print("Friend Name: \(friend)")
        break
    }
}

// 4 tane daha mehmet eklemeye çalışayım.
friends2.insert("Mehmet")
friends2.insert("Mehmet")
friends2.insert("Mehmet")
friends2.insert("Mehmet")

print(friends2)

// gördüğümüz gibi farkeden bir şey yok Set'lerin unique olma özelliği sayesinde Set'im içerisinde sadece bir tane Mehmet var.

// insert yapıldığında aslında Set veri yapısı şunu yapıyor arka planda.

if friends2.contains("Mehmet"){
    print("Eleman zaten var ekleme")
}else{
    print("Eleman yok ekleyebilirsin.")
}

// contains() methodu belirli bir elemanın Set içinde olup olmadığını kontrol eder.Eğer eleman varsa true yoksa false döner.

// Boş Bir Set Tanımlama

var emptySet : Set<String> = []
var emptySet2 = Set<String>()

// Set veri yapısını matematik'teki kümeler gibi kullanabiliriz.

let set1 : Set<Int> = [1,3,25]
let set2 : Set<Int> = [5,90,3]

// İki Set arasındaki kesişimi bulmak için " intersection(_:) " yöntemini kullanıyoruz.Geriye bir Set döndürür.

print("Intersection(Kesişim) : \(set1.intersection(set2))")

// İki Set'in birleşimini bulmak için " union(_:) " yöntemini  kullanıyoruz.Geri bir Set döndürür.

print("Union(Birleşim) : \(set1.union(set2))")

// Bir Set'in başka bir Set'in alt kümesi olup olmadığını kontrol etmek için  " isSubset(of:) "  yöntemini kullanabilirsiniz.

let set3 : Set<Int> = [1,2,3,4]
let set4 : Set<Int> = [1,2,3,4,5]

print("Subset(Alt Küme Kontrolü) : \(set3.isSubset(of: set4))")

// Bir Set'in başka bir Set'in üst kümesi olup olmadığını kontrol etmek için  " isSuperset(of:) "  yöntemini kullanabilirsiniz.

print("Superset(Üst Küme Kontrolü) : \(set4.isSuperset(of: set3))")

// İki Set arasındaki farkı bulmak için " subtracting(_:) " yöntemini kullanabiliriz.Fark, ilk Set'te bulunan ancak ikinci Set'te bulunmayan öğeleri içeren yeni bir Set döndürür.

print("Subtracting(Fark) : \(set1.subtracting(set2))")


