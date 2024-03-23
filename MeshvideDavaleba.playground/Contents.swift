import UIKit

//1.შექმენით Enum-ი სახელით WeekDay შესაბამისი ქეისებით. დაწერეთ ფუნქცია რომელიც იღებს ამ ენამის ტიპს და ბეჭდავს გადაწოდებული დღე სამუშაოა თუ დასვენების.
print("-----1-----")

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sutarday
}
func weekend(days: WeekDay) {
    if days == .saturday || days == .saturday {
        print("this is weekend")
    }
}
weekend(days: .saturday)

//2.შექმენით Enum-ი სახელად GialaSquad, რომელიც აღწერს გია სურამელაშვილის ფანკლუბის წევრების დონეებს ქეისებით : “TsigroviManto”, “MoshishvlebuliMkerdi”, “TuGapatio”. შექმენით ფროფერთი GialaSquad-ში, რომელსაც ექნება ინფორმაცია თუ რა ღირს თითოეული დონე თვეში (დონეები დალაგებულია ძვირიდან იაფისაკენ). დაუმატეთ მეთოდი რომელიც დაბეჭდავს თითოეული დონის ფასს.
print("-----2-----")

enum GialSquad {
    case tsigroviManto
    case moshishvlebuliMkerdi
    case tugapatio
    
    func printThe(Price: GialSquad) {
        switch self {
        case.tsigroviManto:
            print("price is 123 $")
        case.moshishvlebuliMkerdi:
            print("price is 999 $")
        case.tugapatio:
            print("price is 1999 $")
        }
    }
}

//3.შექმენით enum-ი Weather შემდეგი ქეისებით, Sunny, Cloudy, Rainy და Snowy. ამ ქეისებს უნდა ჰქონდეს associated value Celsius-ის სახით. დაწერეთ function რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.
print("-----3-----")

enum Wheather {
    case sunny
    case cloudy
    case rainy
    case snowy
}

func adviceFor(clothes: Wheather) {
    if clothes == .sunny {
        print("Better to wear shorts")
    } else if clothes == .cloudy {
        print("Better to wear jacket")
    } else if clothes == .rainy {
        print("better to wear raincoat")
    } else if clothes == .snowy {
        print("Better to wear coat")
    }
}

adviceFor(clothes: .rainy)

//4.შექმენით struct-ი Kanye, ფროფერთებით: album, releaseYear. ამის შემდეგ შექმენით array-ი Kanye-ს ტიპის, ჩაამატეთ რამოდენიმე Kanye-ს ობიექტი, და შეავსეთ მასივი კანიეებით. დაწერეთ ფუნქცია, რომელიც მიიღებს ამ კანიეების მასივს და წელს. ფუნქციამ უნდა დაგვიბრუნოს ყველა ალბომი რომელიც გამოშვებულია გადაწოდებული წლის შემდეგ და დაბეჭდოს ისინი.
print("-----4-----")

struct Kanye {
    var album: String
    let releaseYear: UInt
    
    init(album: String, releaseYear: UInt) {
        self.album = album
        self.releaseYear = releaseYear
    }
}

var arrayOfKanye: [Kanye] = [
    Kanye(album: "ULTURES 1", releaseYear: 2024),
    Kanye(album: "Donda (Deluxe)", releaseYear: 2021),
    Kanye(album: "JESUS IS KING", releaseYear: 2018),
    Kanye(album: "The Life of Pablo", releaseYear: 2016),
    Kanye(album: "Yeezus", releaseYear: 2013)
]
func songs(Year: UInt, fromAlbum: [Kanye]) -> [String] {
    var resaltUlbom = [String]()
    
    for i in arrayOfKanye {
        if i.releaseYear > Year {
            print("metia")
        }
    }
    return resaltUlbom
}
songs(Year: 2004, fromAlbum: arrayOfKanye)


//5.შექმენით String-ის ტიპის lazy property wrapper სახელად, cachedData. ინიციალიზება გაუკეთეთ ქლოჟერით რომელიც აბრუნებს სტრინგს მნიშვნელობით “lazy ინიციალიზებულია”. მიწვდით ამ ფროფერთის და დაბეჭდეთ მისი მნიშვნელობა.

@propertyWrapper
struct CashedData {
    var someThing: String?
    lazy var oneMore = "lazy"
    
    var wrappedValue: String {
        mutating get {
            if someThing == nil {
                someThing = oneMore
                return oneMore
            } else {
                return someThing!
            }
        }
        set {
            someThing = newValue
        }
    }
}
