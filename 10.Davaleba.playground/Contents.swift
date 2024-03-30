import UIKit

//1.შექმენით ციკლური რეფერენცები და გაწყვიტეთ.
class First {
    var justSome: String
    weak var secondClass: Second?
    
    init(justSome: String, secondClass: Second? = nil) {
        self.justSome = justSome
        self.secondClass = secondClass
    }
    
    deinit {
        print("\(justSome) deiniti moxda")
    }
    //5.დაიჭირეთ self ქლოჟერებში.
    func asdasd() {
        secondClass?.justClosire { [weak self] in
            print(self ?? "")
        }
    }
}

class Second {
    var meoreVar: String
    var firstClass: First?
    
    init(meoreVar: String, firstClass: First? = nil) {
        self.meoreVar = meoreVar
        self.firstClass = firstClass
    }
    
    deinit {
        print("\(meoreVar) deiniti moxda")
    }
    //2.აუცილებელია ქლოჟერების გამოყენება.
    func justClosire(closure: ()->Void ) {
        
    }
}
var firstDeinit: First? = First(justSome: "ljdfgln")
var raghac: Second? = Second(meoreVar: "asd")

//firstDeinit?.secondClass = raghac
//raghac?.firstClass = firstDeinit
//
//firstDeinit = nil
//raghac = nil



//3.აუცილებელია value და რეფერენს ტიების გამოყენება (კლასები, სტრუქტურები, ენამები და პროტოკოლები).
protocol NewProtocol {
    var first1: String { get }
    var first2: First? { get }
    var first3: Second? { get }
}

//4.აუცილებელია გამოიყენოთ strong, weak & unowned რეფერენსები ერთხელ მაინც.
class All: NewProtocol {
    var first1: String
    weak var first2: First?
    unowned var first3: Second?
    
    init(first1: String, first2: First? = nil, first3: Second? = nil) {
        self.first1 = first1
        self.first2 = first2
        self.first3 = first3
    }
    
    deinit {
        print("\(first1) deinitda")
    }
}

var some = All(first1: "es")
some = nil


//6.გატესტეთ მიღებული შედეგები ინსტანსების შექმნით და დაპრინტვით.
