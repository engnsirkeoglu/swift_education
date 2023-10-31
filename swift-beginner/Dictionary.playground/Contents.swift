import Foundation

// Dictionary (Sözlük)

// Anahtar(key) - değer (value) çiftleri koleksiyonunu temsil eden veri yapısıdır.Anahtarlar benzersiz olmalıdır, yani aynı anahtara sahip birden fazla değeri içeremezler.

// Dictionary Tanımlama

// var dictionaryName : [KeyDataType:ValueDataType] = [keys:values]

// var dictionaryName = [keys:values]

var dictionary : [String:String] = ["name":"isim","book":"kitap"]
print(dictionary)

var ages = ["Engin":23,"Çağatay":25,"Abdullah":27]
print(ages)

var student = ["Kaan":(25,"Istanbul"),"Salih":(26,"Kastamonu"),"Mustafa Emre":(23,"Çankırı")]
print(student)

// student dictionary'nin tipi şu : [String : (Int,String)] şeklindedir.

var notes : [String:[Int]] = ["Serkan":[50,20,90],"Mehmet":[70,100,90],"Ayşe":[15,22,45]]
print(notes)


var cityCodes : [Int:String] = [1:"Adana",34:"Istanbul",6:"Ankara"]

// Dictionary'ler sıralı değillerdir yani unordered(sırasız)'dırlar.

print(cityCodes)

// Dictionary'lerde Iteration(Değerleri Gezinme) İşlemi

// Sadece anahtarları dolaşma

for key in cityCodes.keys{
    print("Sadece Anahtarları Dolaşma : \(key)")
}

// Sadece değerleri dolaşma

for value in cityCodes.values{
    print("Sadece Değerleri Dolaşma : \(value)")
}

// Hem anahtarları hem de değerleri dolaşmak

for cityCodeAndName in cityCodes{
    print("Key: \(cityCodeAndName.key)  Value: \(cityCodeAndName.value)")
}

// Şimdi burada bakacak olursak cityCodeAndName değişkeni bir tuple ve bu tuple (key: Int, value: String) ' dir.

// Dictionary'nin key değerlerinin unique(tekil) olduğundan bahsetmiştik.

// Dictionary içerisinde bir anahtarla ilişkilendirilmiş bir değer varsa ve siz aynı anahtara farklı bir değer eklemeye çalışırsanız yeni değer eski değerin üzerine yazılır.Yani anahtarın yeni değeri en son yazılan değer olur.

// var values : [Int:String] = [1:"a",2:"b",3:"c",1:"d"]

// Şimdi yukarıda oluştururken bir key değerini tekrar ettik ve hata ile karşılaştık.

var values : [Int:String] = [1:"a",2:"b",3:"c"]
print(values)

// Dictionary'de Elemanlara Erişim

// Dictionary içerisindeki değerlere,key'leri kullanarak erişim sağlayabiliriz.

let city = cityCodes[34]
print(city)

// Key ile değere erişim sağladım ama key bana Optional olarak veriliyor.Bunun sebebi de vermiş olduğumuz key değeri belki de o dictionary içerisinde bulunmuyor bu nedenle de bize value'yi Optional olarak veriyor.

if let cityNotOptional = cityCodes[1]{
    print(cityNotOptional)
}else{
    print("not value")
}

// Dictionary'de Eleman Ekleme ve Güncelleme

// Yeni bir key-value çifti ekleyerek yeni eleman ekleyebiliriz.

// Varolan bir key'in değerini güncellemek için de ona yeni bir değer atamak yeterli olacaktır.

// ekleme
// dictionaryName[newKey] = newValue

// güncelleme
// dictionaryName[existingKey] = newValue

cityCodes[41] = "Sakarya"
print(cityCodes)

cityCodes[41] = "Kocaeli"
print(cityCodes)

// Dictionary'de Eleman Güncelleme

// Eleman silmek için removeValue(forKey:) fonksiyonunu kullanabiliriz.

// Belirli bir anahtar ile ilişkilendirilmiş değeri silmek için kullanılır. Eğer belirtilen anahtar Dictionary içinde bulunuyorsa, bu yöntem o anahtar ile ilişkilendirilmiş değeri siler ve silinen değeri döndürür. Eğer anahtar Dictionary içinde yoksa, geriye nil değeri döner dictionary içerisinde hiç bir değişiklik olmaz.

if let deletedCity = cityCodes.removeValue(forKey: 41){
    print(deletedCity)
}else{
    print("There isn't city matching this value")
}

print(cityCodes)

// eğer dictionary içerisindeki tüm değerleri silmek istersek removeAll() metodunu kullanabiliriz.

// Boş Dictionary Tanımlama

// var emptyDictionary : [keyDataType:valueDataType] = [:]

// var emptyDictionary  = [keyDataType:valueDataType]()

// var emptyDictionary = Dictionary <keyDataType,valueDataType>()

var emptyDictionary1 : [String:String] = [:]
var emptyDictionary2 = Dictionary<String,String>()
var emptyDictionary3 = [String:String]()

print(emptyDictionary1.isEmpty)
print(emptyDictionary2.isEmpty)
print(emptyDictionary3.isEmpty)

// Dictionary'nin diğer kullanılan property'leri

// Sadece key değerleri lazımsa

// dictionaryName.keys bize sadece key değerlerini verir.

var justKeys = Array(cityCodes.keys)
print(justKeys)

// Sadece value değerleri lazımsa

// dictionaryName.values bize sadece value değerlerini verir.

var justValues = Array(cityCodes.values)
print(justValues)

// biz bunları ne kadar bir diziye de atamış olsak unutmayalım ki Dictionary sırasız bir koleksiyon ve bu nedenle de her çalışmada farklı bir sıralama olacak bu nedenle bunlar ne kadar dizi de olsa sırasız olduğu unutulmamalıdır.


// randomElement() fonksiyonu, bir koleksiyonun rastgele bir elemanını seçmek için kullanılır.Eğer koleksiyon boşsa nil döner.

if let randomValue = cityCodes.randomElement(){
    print(randomValue)
}else{
    print("no value")
}



