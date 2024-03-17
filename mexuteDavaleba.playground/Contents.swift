import Foundation

//1.დაწერეთ ფუნქცია რომელიც პარამეტრად მიიღებს String-ს და დააბრუნებს ბულიანს. ფუნქციამ უნდა შეამოწმოს მიღებული სტრინგი სარკისებურია თუ არა (სიტყვა ან წინადადება რომელიც იკითხება ერთნაირად როგორც თავიდან, ისე ბოლოდან მაგ: “ანა”, “აირევი ივერია”, “მადამ”).
func shebrunebuli(rendom: String) -> (Bool) {
    var saboloo = ""
    var end = false
    
    for char in rendom {
        saboloo = String(char) + saboloo
    }
    if saboloo == rendom {
        end = true
    } else {
        end = false
    }
    return(end)
}
shebrunebuli(rendom: "ana")

//2.დაწერეთ ფუნქცია რომელიც გადაცემულ რიცხვების array-ს ააკვადრატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.
func justArray(array: [Int]) -> Int {
    var gadacemuliArray = 0
    for i in array {
        print(i * i)
    }
    return gadacemuliArray
}

justArray(array: [2,4,4,6])

//3.დაწერეთ Closure რომელიც გაფილტრავს ლუწ რიცხვებს Int-ების Array-დან.
var mixNumber = [123, 45, 2, 54, 4, 5]
let justClosure = {
    for i in mixNumber {
        if i.isMultiple(of: 2) {
            print(i)
        }
    }
}
justClosure()

//4.დაწერეთ ფუნქცია, რომელიც პარამეტრად იღებს Int-ების მასივს. Escaping closure-ის მეშვეობით დაბეჭდეთ მიწოდებული მასივის ჯამი 5 წამის შემდეგ. დარწმუნდით რომ closure არის escaping და გამოიძახეთ ის მას შემდეგ რაც ფუნქცია დაბრუნდება.
func myFunc(number: [Int]) {
    for i in 0...number.count - 1 {
        print(i + i)
    }
}
myFunc(number: [25, 25])
let numbers = [13, 54, 6, 27]
let jami = {
    
}

//5.შექმენით  კონტაქტების Dict სადაც key არის სახელი და value ტელეფონის ნომერი, დაამატეთ, დაბეჭდეთ/მოძებნეთ და წაშალეთ კონტაქტი.
var telefoni: [String: Int] = [
    "nini" : 1,
    "mari" : 2,
    "gio" : 3,
    "nene" : 4,
    "nanuka" : 5,
    "luka" : 6,
    "elisabed" : 7
]
//modzebna
telefoni["luka"]

//washla
telefoni.removeValue(forKey: "nini")

//damateba
telefoni["nini2 ddd"] = 8

//6.დაწერეთ ფუნქცია რომელიც პარამეტრად იღებს [String: Int] ტიპის Dictionary-ს და დააბრუნებს ანბანურად დალაგებულ dictionary-ს key ელემენტების მასივს.

//7.შექმენით Double-ების მასივი, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ მასივში და დაბეჭდეთ.
let doubleArray = [3.4, 3.9, 54.8, 6.1]
var maxDoubleArray = doubleArray[0]

for i in doubleArray {
    if i > maxDoubleArray {
        maxDoubleArray = i
    }
}
print("kvelaz didi aris \(maxDoubleArray)")
