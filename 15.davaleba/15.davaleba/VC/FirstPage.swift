//
//  FirstPage.swift
//  15.davaleba
//
//  Created by Data on 10.04.24.
//

import UIKit


class FirstPage: UIViewController {
    
    let zodiacStuct: Zodiacs? = nil
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: "Image")
        let imageView = UIImageView(image: image)
        
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let topTitleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "ვერძი"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let mainText: UITextView = {
        let text = UITextView()
        
        text.text = "მოცემულ აპლიკაციაში შეგიძლიათ გაიგოთ თქვენი ზოდიაქოს ყველაზე გამოკვეთილი უნარები და თვისებები."
        text.textColor = .gray
        text.backgroundColor = .clear
        text.font = UIFont.systemFont(ofSize: 16)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    let forTextField: UIStackView = {
        let stack = UIStackView()
        
        stack.axis = .vertical
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    let mainButton: UIButton = {
        let button = UIButton()
        let color = UIColor(red: CGFloat(80)/255.0,
                            green: CGFloat(0)/255.0,
                            blue: CGFloat(182)/255.0,
                            alpha: 1.0)
        
        button.setTitle("შემდეგ", for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = color
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        background()
        mainTitle()
        text()
        forZodiacoTextField()
        configure()
        nextButton()
    }
    
    func background() {
        view.addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    func mainTitle() {
        view.addSubview(topTitleLabel)
        topTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 71).isActive = true
        topTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17).isActive = true
    }
    
    func text() {
        view.addSubview(mainText)
        mainText.heightAnchor.constraint(equalToConstant: 75).isActive = true
        mainText.topAnchor.constraint(equalTo: topTitleLabel.bottomAnchor, constant: 20).isActive = true
        mainText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        mainText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
    }
    
    func forZodiacoTextField() {
        view.addSubview(forTextField)
        forTextField.topAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 91).isActive = true
        forTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        forTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -18).isActive = true
    }
    
    let cvladiTextField = UITextField()
    
    func configure() {
        let label = UILabel()
        label.text = "ზოდიაქოს სახელი"
        label.textColor = .white
        
        let textField = cvladiTextField
        textField.attributedPlaceholder = NSAttributedString(string: "მაგ: ტყუპები", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        textField.borderStyle = .roundedRect
        textField.layer.borderColor = UIColor.white.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        textField.backgroundColor = .clear
        textField.textColor = .white
        textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        forTextField.addArrangedSubview(label)
        forTextField.addArrangedSubview(textField)
    }
    
    func nextButton() {
        view.addSubview(mainButton)
        mainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        mainButton.topAnchor.constraint(equalTo: forTextField.bottomAnchor, constant: 25).isActive = true
        mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        mainButton.addTarget(self, action: #selector(gadasvla), for: .touchUpInside)
    }
    
    @objc func gadasvla() {
        let vc = SecondPage()
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        if cvladiTextField.text == "ვერძი" {
            vc.nameOfzodiac.text = ariesVariable.name
            vc.labelForText.text = ariesVariable.text
            vc.zodiaco.image = UIImage(named: ariesVariable.imageName)
            
        } else if cvladiTextField.text == "კურო" {
            vc.nameOfzodiac.text = taurusVariable.name
            vc.labelForText.text = taurusVariable.text
            vc.zodiaco.image = UIImage(named: taurusVariable.imageName)
            
        } else if cvladiTextField.text == "ტყუპები" {
            vc.nameOfzodiac.text = geminiVariable.name
            vc.labelForText.text = geminiVariable.text
            vc.zodiaco.image = UIImage(named: geminiVariable.imageName)
            
        } else if cvladiTextField.text == "კირჩხიბი" {
            vc.nameOfzodiac.text = cancerVariable.name
            vc.labelForText.text = cancerVariable.text
            vc.zodiaco.image = UIImage(named: cancerVariable.imageName)
            
        } else if cvladiTextField.text == "ლომი" {
            vc.nameOfzodiac.text = leoVariable.name
            vc.labelForText.text = leoVariable.text
            vc.zodiaco.image = UIImage(named: leoVariable.imageName)
            
        } else if cvladiTextField.text == "ქალწული" {
            vc.nameOfzodiac.text = virgoVariable.name
            vc.labelForText.text = virgoVariable.text
            vc.zodiaco.image = UIImage(named: virgoVariable.imageName)
            
        } else if cvladiTextField.text == "სასწორი" {
            vc.nameOfzodiac.text = libraVariable.name
            vc.labelForText.text = libraVariable.text
            vc.zodiaco.image = UIImage(named: libraVariable.imageName)
            
        } else if cvladiTextField.text == "მორიელი" {
            vc.nameOfzodiac.text = scorpioVariable.name
            vc.labelForText.text = scorpioVariable.text
            vc.zodiaco.image = UIImage(named: scorpioVariable.imageName)
            
        } else if cvladiTextField.text == "მშვილდოსანი" {
            vc.nameOfzodiac.text = sagittariusVariable.name
            vc.labelForText.text = sagittariusVariable.text
            vc.zodiaco.image = UIImage(named: sagittariusVariable.imageName)
            
        } else if cvladiTextField.text == "თხის რქა" {
            vc.nameOfzodiac.text = capricornVariable.name
            vc.labelForText.text = capricornVariable.text
            vc.zodiaco.image = UIImage(named: capricornVariable.imageName)
            
        } else if cvladiTextField.text == "თევზები" {
            vc.nameOfzodiac.text = piscesVariable.name
            vc.labelForText.text = piscesVariable.text
            vc.zodiaco.image = UIImage(named: piscesVariable.imageName)
            
        } else if cvladiTextField.text == "მერწყული" {
            vc.nameOfzodiac.text = aquariusVariable.name
            vc.labelForText.text = aquariusVariable.text
            vc.zodiaco.image = UIImage(named: aquariusVariable.imageName)
        } else {
            vc.nameOfzodiac.text = "ზოდიაქო არ მოიძებნა"
        }
    }
}

#Preview {
    FirstPage()
}
