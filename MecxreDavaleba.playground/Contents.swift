import UIKit

//1.შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ).
enum Gender {
    case male
    case female
}

//2.შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender.
protocol SuperBeing {
    var name: String { get }
    var strength: Int { get }
    var speed: Int { get }
    var weakness: String { get }
    var gender: Gender { get }
}

//3.SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა.
extension SuperBeing {
    var strength: Int {
        30
    }
    var speed: Int {
        20
    }
}

//4.შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.
class SuperHero: SuperBeing {
    var name: String
    var strength: Int
    var speed: Int
    var weakness: String
    var gender: Gender
    //5.გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String.
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    init(name: String, strength: Int, speed: Int, weakness: String, gender: Gender, outfitColor: String, equipment: String,vehicle: String) {
        self.name = name
        self.strength = strength
        self.speed = speed
        self.weakness = weakness
        self.gender = gender
        self.outfitColor = outfitColor
        self.equipment = equipment
        self.vehicle = vehicle
    }
    
    //6.გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს - “‘სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს).
    func rescue(names: String) {
        print("\(name) არ შეუშინდა სახიფათო სიტუაციას და \(names) გადაარჩინა სიკვდილს")
    }
    
    //7.გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს - “‘სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”).
    func combat(superVillan: superVillan) {
        print("\(name) შეერკინა და დაამარცხა \(superVillan)")
    }
}
class superVillan: SuperBeing {
    var name: String
    var strength: Int
    var speed: Int
    var weakness: String
    var gender: Gender
    //8.გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String.
    var evilScheme: String
    var obsession: String
    var rivarly: String
    
    init(name: String, strength: Int, speed: Int, weakness: String, gender: Gender, evilScheme: String, obsession: String, rivarly: String) {
        self.name = name
        self.strength = strength
        self.speed = speed
        self.weakness = weakness
        self.gender = gender
        self.evilScheme = evilScheme
        self.obsession = obsession
        self.rivarly = rivarly
    }
    
    //9.გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს - “ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს)
    func atteck(superHero: SuperHero) {
        print("\(name) გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა \(superHero) მის შეჩერებას თუ შეძლებს")
    }
    
    //10.გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს - “‘ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა).
    func exoerimentation(subject: String) {
        print("\(name) ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად \(subject) აღმოჩნდა")
    }
}



//11.შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან.

//shevsena damezara
var superHero1 = SuperHero(name: "spider-man", strength: 40, speed: 50, weakness: "", gender: .male, outfitColor: "blue and red", equipment: "web", vehicle: "web")
var superHero2 = SuperHero(name: "", strength: 123, speed: 123, weakness: "", gender: .male, outfitColor: "", equipment: "", vehicle: "")
var superHero3 = SuperHero(name: "", strength: 123, speed: 123, weakness: "", gender: .female, outfitColor: "", equipment: "", vehicle: "")
var superHero4 = SuperHero(name: "", strength: 123, speed: 123, weakness: "", gender: .male, outfitColor: "", equipment: "", vehicle: "")
var superHero5 = SuperHero(name: "", strength: 123, speed: 123, weakness: "", gender: .female, outfitColor: "", equipment: "", vehicle: "")
superHero1.rescue(names: "gela")
superHero1.combat(superVillan: superVillan1)

var superVillan1 = superVillan(name: "", strength: 123, speed: 123, weakness: "", gender: .female, evilScheme: "", obsession: "", rivarly: "")
var superVillan2 = superVillan(name: "", strength: 123, speed: 123, weakness: "", gender: .male, evilScheme: "", obsession: "", rivarly: "")
var superVillan3 = superVillan(name: "", strength: 123, speed: 123, weakness: "", gender: .male, evilScheme: "", obsession: "", rivarly: "")
var superVillan4 = superVillan(name: "", strength: 123, speed: 123, weakness: "", gender: .female, evilScheme: "", obsession: "", rivarly: "")
var superVillan5 = superVillan(name: "", strength: 123, speed: 123, weakness: "", gender: .male, evilScheme: "", obsession: "", rivarly: "")
