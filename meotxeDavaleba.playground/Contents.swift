import UIKit

//1.while ციკლის გამოყენებით, 1-დან 20-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.
var odd = 1
var result = 1

while odd < 20 {
    if odd % 2 != 0 {
        result *= odd
    }
    odd += 1
}
print(result)

//2.შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”.
var justString = "aklsmfnkjanc"
var character: [String] = []
var shebrunebuli = ""

for i in justString {
    character.append(String(i))
}

for i in stride(from: character.count-1, to: -1, by: -1) {
    shebrunebuli += character[i]
}

print(shebrunebuli)

//3.while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕...".
//var colors = ["🔴", "🌕", "🟢"]
//var current = 0
//
//while true {
//    sleep(1)
//    let color = colors[current]
//    switch color {
//    case "🔴":
//        print("🔴")
//    case "🌕":
//        print("🌕")
//    case "🟢":
//        print("🟢")
//    default:
//        break
//    }
//    current = (current + 1) % 3
//}

//4.Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”.
var bileti = 20

while bileti > 0 {
    bileti -= 1
    print("ბილეთი გაყიდულია, დარჩენილია მხოლოდ \(bileti) რაოდენობა")
    if bileti == 0 {
        print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")
    }
}

//5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა).
let justArray = [1,435,56,1,3,4,56]

var ertnairi = false

for i in justArray {
    var dublicate = 0
    for sxva in justArray {
        dublicate += i == sxva ? 1 : 0
    }
    ertnairi = dublicate > 1
}
//6.დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას.
let justClosure: (Int, Int) -> Int = { num1, num2 in
    return num1 - num2
}
print(justClosure(10293, 293))

//7.დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.
func tanxmovnebi(sitkva: String) -> Int {
    var dabruneba = 0
    return dabruneba
}
