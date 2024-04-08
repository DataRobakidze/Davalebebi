//
//  ViewController.swift
//  14.davaleba
//
//  Created by Data on 08.04.24.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: cvladebi
    
    //fotos cvladi
    let lockImage: UIImageView = {
        let iconImage = UIImage(systemName: "lock.laptopcomputer")
        let imageView = UIImageView(image: iconImage)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black
        
        return imageView
    }()
    
    //satauris-is cvladi
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "მოგესალმებით!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    //tekstis-s cvladi
    let bigText: UITextView = {
        let paragrafi = UITextView()
        
        paragrafi.text = "ამ აპლიკაციის გამოყენების საუკეთესო გზა თქვენს ანგარიშზე შესვლაა, თუ არ გაქვთ ანგარიში გააკეთეთ, თუ არ გსურთ გაკეთება დასტოვეთ აქაურობა და წაშალეთ აპლიკაცია."
        paragrafi.textColor = .gray
//        paragrafi.backgroundColor = .gray
        paragrafi.font = UIFont.systemFont(ofSize: 16)
        paragrafi.translatesAutoresizingMaskIntoConstraints = false
        
        return paragrafi
    }()
    
    //avtorizaviis label
    let avotizacia: UILabel = {
        let logIn = UILabel()
        
        logIn.text = "ავტორიზაცია"
        logIn.textColor = .black
        logIn.translatesAutoresizingMaskIntoConstraints = false
        
        return logIn
    }()
    
    //line avtorizaciis mere
    var line: UIView = {
        let viewLine = UIView()
        let customColor = UIColor(red: CGFloat(51) / 255.0,
                                  green: CGFloat(165) / 255.0,
                                  blue: CGFloat(229) / 255.0,
                                  alpha: 1.0)

        viewLine.backgroundColor = customColor
        viewLine.translatesAutoresizingMaskIntoConstraints = false
        
        return viewLine
    }()
    
    //login stack view
    let logInSack: UIStackView = {
        let login = UIStackView()
        
        login.axis = .vertical
        login.translatesAutoresizingMaskIntoConstraints = false
//        login.backgroundColor = .gray
        login.spacing = 8
        
        return login
    }()
    
    //shesasvleli buttoni
    let mainButton: UIButton = {
        let button = UIButton()
        let customColor = UIColor(red: CGFloat(51) / 255.0,
                                  green: CGFloat(165) / 255.0,
                                  blue: CGFloat(229) / 255.0,
                                  alpha: 1.0)
        
        button.backgroundColor = customColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("შესვლა", for: .normal)
        button.layer.cornerRadius = 16
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        constraintsOfMainImage()
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: lockImage.bottomAnchor, constant: 30).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainText()
        addAvtLabel()
        bigLine()
        forStackView()
        configure()
        blueButton()
    }
    
    //MARK: funkciebi
    
    //fotos damatebis funkcia
    func constraintsOfMainImage() {
        self.view.addSubview(lockImage)
        lockImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        lockImage.widthAnchor.constraint(equalToConstant: 90).isActive = true
        lockImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        lockImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 145).isActive = true
    }
    
    //tekstis damatebis funkcia
    func mainText() {
        view.addSubview(bigText)
        bigText.heightAnchor.constraint(equalToConstant: 98).isActive = true
//        bigText.widthAnchor.constraint(equalToConstant: 90).isActive = true
        bigText.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        bigText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        bigText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
    }
    
    //avtorizaciis labelis damateba
    func addAvtLabel() {
        view.addSubview(avotizacia)
        avotizacia.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130).isActive = true
        avotizacia.topAnchor.constraint(equalTo: bigText.bottomAnchor, constant: 20).isActive = true
    }
    
    //line func
    func bigLine() {
        view.addSubview(line)
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        line.topAnchor.constraint(equalTo: avotizacia.bottomAnchor, constant: 10).isActive = true
        line.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        line.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    //stackis damateba
    func forStackView() {
        view.addSubview(logInSack)
//        logInSack.heightAnchor.constraint(equalToConstant: 220).isActive = true
//        logInSack.widthAnchor.constraint(equalToConstant: 30).isActive = true
        logInSack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        logInSack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        logInSack.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 20).isActive = true
    }
    
    func configure() {
        let label1 = UILabel()
        label1.text = "სრული სახელი"
        label1.textColor = .black
        
        let Field1 = UITextField()
        Field1.placeholder = "მაგ: ქეთინო ფერი"
        Field1.borderStyle = .roundedRect
        Field1.textColor = UIColor.black
        Field1.font = UIFont.systemFont(ofSize: 16)
        Field1.textAlignment = .left
        Field1.backgroundColor = UIColor.white
        Field1.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        let label2 = UILabel()
        label2.text = "სრული სახელი"
        label2.textColor = .black
        
        let Field2 = UITextField()
        Field2.placeholder = "მაგ: kusuna@mail.ru"
        Field2.borderStyle = .roundedRect
        Field2.textColor = UIColor.black
        Field2.font = UIFont.systemFont(ofSize: 16)
        Field2.textAlignment = .left
        Field2.backgroundColor = UIColor.white
        Field2.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        let label3 = UILabel()
        label3.text = "სრული სახელი"
        label3.textColor = .black
        
        let Field3 = UITextField()
        Field3.placeholder = "მაგ: busuna123, jajanaIsMyKumiri2010"
        Field3.borderStyle = .roundedRect
        Field3.textColor = UIColor.black
        Field3.font = UIFont.systemFont(ofSize: 16)
        Field3.textAlignment = .left
        Field3.backgroundColor = UIColor.white
        Field3.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        logInSack.addArrangedSubview(label1)
        logInSack.addArrangedSubview(Field1)
        
        logInSack.addArrangedSubview(label2)
        logInSack.addArrangedSubview(Field2)
        
        logInSack.addArrangedSubview(label3)
        logInSack.addArrangedSubview(Field3)
    }
    
    //buttonis dasamateblad
    func blueButton() {
        view.addSubview(mainButton)
        mainButton.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
        mainButton.topAnchor.constraint(equalTo: logInSack.bottomAnchor, constant: 30).isActive = true
        mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
}

#Preview {
    ViewController()
}
