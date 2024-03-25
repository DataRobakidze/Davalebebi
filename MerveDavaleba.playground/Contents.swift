import Foundation

//1.შევქმნათ Class Book.
/*
 Properties: bookID(უნიკალური იდენტიფიკატორი Int), String title, String author, Bool isBorrowed.
 Designated Init.
 Method რომელიც ნიშნავს წიგნს როგორც borrowed-ს.
 Method რომელიც ნიშნავს წიგნს როგორც დაბრუნებულს.
 */
class Book {
    var bookID: UUID?
    var title: String
    var author: String
    var isBorrowed: Bool
    
    init(/*bookID: UUID, */title: String, author: String, isBorrowed: Bool) {
//        self.bookID = bookID
        self.title = title
        self.author = author
        self.isBorrowed = isBorrowed
    }
    
    func forBorrowed() {
        if !isBorrowed {
            isBorrowed = true
            print("\(title) es wigni gacemulia")
        } else {
            print("\(title) es wigni ukve dakavebulia")
        }
    }
    
    func returnBook() {
        if isBorrowed {
            isBorrowed = false
            print("\(title) es wigni daabrunes")
        } else {
            print("\(title) es wigni maragshia")
        }
    }
}
let books = Book(title: "witelkuda", author: "gfdh", isBorrowed: true)
books.forBorrowed()
books.returnBook()

//2.შევქმნათ Class Owner
/*
 Properties: ownerId(უნიკალური იდენტიფიკატორი Int), String name, Books Array სახელით borrowedBooks.
 Designated Init.
 Method რომელიც აძლევს უფლებას რომ აიღოს წიგნი ბიბლიოთეკიდან.
 Method რომელიც აძლევს უფლებას რომ დააბრუნოს წაღებული წიგნი.
*/
class Owner {
    var ownerID: UUID?
    var name: String
    var borrowedBooks: [Book]
    
    init(/*ownerID: UUID,*/ name: String, borrowedBooks: [Book]) {
//        self.ownerID = ownerID
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
    
    func rightToTake(book: Book) {
        borrowedBooks.append(book)
    }
    
    func returnThe(book: Book) {
        if let index = borrowedBooks.firstIndex(where: { $0.title == book.title }) {
            book.isBorrowed = true
            borrowedBooks.remove(at: index)
        }
    }
}

//3.ევქმნათ Class Library
/*
 Properties: Books Array, Owners Array.
 Designated Init.
 Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით.
 Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს.
 Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს.
 Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს.
 Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს.
 Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ.
 Method რომელიც აძლევს უფლებას Owner-ს წააღებინოს წიგნი თუ ის თავისუფალია.
*/
class Linrary {
    var arrayOfBook: [Book]
    var arrayOfOwner: [Owner]
    
    init(arrayOfBook: [Book], arrayOfOwner: [Owner]) {
        self.arrayOfBook = arrayOfBook
        self.arrayOfOwner = arrayOfOwner
    }
    
//Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით.
    func add(books: Book) {
        arrayOfBook.append(books)
    }
//Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს.
    func add(owner: Owner) {
        arrayOfOwner.append(owner)
    }
//Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს.
    func allBookReturnAvalable() -> [Book] {
        return arrayOfBook.filter { $0.isBorrowed == false }
        
    }
//Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს.
    func allBorrowdBooks() -> [Book] {
        return arrayOfBook.filter { $0.isBorrowed == true }
    }
//Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს.
    func find(ownerID: UUID) -> Owner {
        return arrayOfOwner.first!
    }
}

//4.გავაკეთოთ ბიბლიოთეკის სიმულაცია.
/*
 შევქმნათ რამოდენიმე წიგნი და რამოდენიმე Owner-ი, შევქმნათ ბიბლიოთეკა.
 დავამატოთ წიგნები და Owner-ები ბიბლიოთეკაში
 წავაღებინოთ Owner-ებს წიგნები და დავაბრუნებინოთ რაღაც ნაწილი.
 დავბეჭდოთ ინფორმაცია ბიბლიოთეკიდან წაღებულ წიგნებზე, ხელმისაწვდომ წიგნებზე და გამოვიტანოთ წაღებული წიგნები
 კონკრეტულად ერთი Owner-ის მიერ.
*/
let book1 = Book(title: "", author: "me", isBorrowed: true)
let book2 = Book(title: "shashvi shashvi makvali", author: "tamta melashvili", isBorrowed: false)

let owner1 = Owner(name: "data", borrowedBooks: [])
let owner2 = Owner(name: "gio", borrowedBooks: [])

var library1 = Linrary(arrayOfBook: [], arrayOfOwner: [])

library1.add(books: book1)
library1.add(books: book2)

library1.add(owner: owner1)
library1.add(owner: owner2)

