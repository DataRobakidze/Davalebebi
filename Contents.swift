import UIKit

//1.შექმენით სამი Int ტიპის ცვლადი, მიანიჭეთ მათ მნიშვნელობა და დაბეჭდეთ მათი ნამრავლი.
let multiplication1 = 23
let multiplication2 = 19
let multiplication3 = 30
let result = multiplication1 * multiplication1 * multiplication3

print(result)

//2.შექმენით int ტიპის ცვლადი, მიანიჭეთ მას მნიშვნელობა და შეამოწმეთ ეს რიცხვი ლუწია თუ კენტი ტერნარი ოპერატორით.
let oddOrEven = 51
let pasuxi = oddOrEven.isMultiple(of: 2) ? "ლუწია" : "კენტია"

//3.შექმენით optional String-ის ტიპის და მიანიჭეთ თქვენი სახელის მნიშვნელობა. If let-ის მეშვეობით გაუკეთეთ unwrap და მნიშვნელობა დაპრინტეთ.
var optionalMyName: String? = "Data"

if let unwraped = optionalMyName {
    print(unwraped)
}

//4.შექმენით ცვლადი სახელად isRaining ბულეანის ტიპის და მიანიჭეთ თქვენთვის სასურველი მნიშვნელობა. If-else-ის მეშვეობით შეამოწმეთ თუ მნიშვნელობა მიიღებს true მნიშვნელობას დაბეჭდეთ “ქოლგის წაღება არ დამავიწყდეს”, სხვა შემთხვევაში “დღეს ქოლგა არ დამჭირდება”.
var isRaining: Bool = true

if isRaining {
    print("ქოლგის წაღება არ დამავიწყდეს")
} else {
    print("დღეს ქოლგა არ დამჭირდება")
}

//5.შექმენით ორი int ტიპის ცვლადი a & b და მიანიჭეთ სასურველი რიცხვები. If-else-ით შეამოწმეთ თუ a მეტია b-ზე დაბეჭდეთ “a მეტია”,  სხვა შემთხვევაში “b მეტია”.
var numberA = 143
var numberB = 94

if numberA > numberB {
    print("\(numberA) მეტია \(numberB)-ზე")
} else if numberA < numberB {
    print("\(numberA) ნაკლებია \(numberB)-ზე")
}else {
    print("ტოლია")
}

//6.შექმენით მუდმივა Character ტიპის და მიანიჭეთ თქვენი სახელის პირველი ასოს მნიშვნელობა.
let myNameFirstLetter: Character = "D"

//7.მოცემულია ორნიშნა რიცხვი, გაიგეთ არის თუ არა ერთიდაიმავე ციფრისგან შემდგარი.
let tweens = 99

if tweens.isMultiple(of: 11) && tweens < 100 {
    print("ერთიდაიმავე ციფრებისგან შედგება")
} else if tweens > 100{
    print("ორნიშნა არარის")
} else {
    print("ერთიდაიმავე ციფრებისგან არ შედგება")
}

//8.აიღეთ ცვლადი numberOfMonths მიანიჭეთ მნიშვნელობა და იმის მიხედვით თუ მერამდენე თვეა დაბეჭდეთ ის (გაზაფხული, ზაფხული, შემოდგომა, ზამთარი) შესაბამისად.
var numberOfMonths = 5

if numberOfMonths >= 3 && numberOfMonths <= 5 {
    print("გაზაფხული")
} else if numberOfMonths >= 6 && numberOfMonths <= 8 {
    print("ზაფხული")
} else if numberOfMonths >= 9 && numberOfMonths <= 11{
    print("შემოდგომა")
} else {
    print("ზამტარი")
}


//9.შექმენით მთელი რიცხვის მქონე ცვლადი. თუ ეს ცვლადი იყოფა 3-ზე, დაბეჭდეთ “იყოფა 3-ზე”, თუ ეს ცვლადი იყოფა 4-ზე დაბეჭდეთ “იყოფა 4-ზე”, თუ იყოფა ორივეზე დაბეჭდეთ “იყოფა 3-ზე და 4-ზე”
let number = 123

if number.isMultiple(of: 3) && number.isMultiple(of: 4) {
    print("იყოფა 3-ზე და 4-ზე")
} else if number.isMultiple(of: 4) {
    print("იყოფა 4-ზე")
} else if number.isMultiple(of: 3) {
    print("იყოფა 3-ზე")
}

//10.შექმენით ორი რიცხვითი ცვლადი num1, num2 და რაიმე String ტიპის ცვლადი რომელსაც ტერნარული ოპერატორის საშუალებით მიანიჭებთ “თანაბრად დაშორებულია ნულიდან” / “არ არის თანაბრად დაშორებული ნულიდან” შესაბამის მნიშვნელობას რომელსაც აკმაყოფილებს მოცემული ორი ცვლადი
var num1 = 123
var num2 = -123

let zero: () = num1 + num2 == 0 ? print("თანაბრად დაშორებულია ნულიდან") : print("არ არის თანაბრად დაშორებული ნულიდან")
