//
//  LastVC.swift
//  17.davaleba
//
//  Created by Data on 15.04.24.
//

import UIKit

class LastVC: UIViewController {
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: "launchScreanBK")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let textFields: UIStackView = {
        let textfield = UIStackView()
        textfield.axis = .vertical
        textfield.spacing = 10
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    let buttonForAdd: UIButton = {
        let color = UIColor(red: 0/255, green: 155/255, blue: 16/255, alpha: 1.0)
        let button = UIButton()
        button.backgroundColor = color
        button.layer.cornerRadius = 25
        button.setTitle("დამატება", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackground()
        addMainButton()
        addTextFIelds()
        configureOfSack()
    }
    
    func addBackground() {
        view.addSubview(backgroundImage)
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func addMainButton() {
        view.addSubview(buttonForAdd)
        NSLayoutConstraint.activate([
            buttonForAdd.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -103),
            buttonForAdd.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonForAdd.heightAnchor.constraint(equalToConstant: 48),
            buttonForAdd.widthAnchor.constraint(equalToConstant: 132)
        ])
    }
    
    func addTextFIelds() {
        view.addSubview(textFields)
        NSLayoutConstraint.activate([
            textFields.topAnchor.constraint(equalTo: view.topAnchor, constant: 91),
            textFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            textFields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureOfSack() {
        let color = UIColor(red: 31/255, green: 34/255, blue: 45/255, alpha: 1.0)
        
        let title = UILabel()
        title.text = "სათაური"
        title.textColor = .white
        
        let titleOfPanick = UITextField()
        titleOfPanick.attributedPlaceholder = NSAttributedString(string: "მაგ: პანიკა, დახმარება მჭირდება", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        titleOfPanick.backgroundColor = color
        titleOfPanick.borderStyle = .roundedRect
        titleOfPanick.layer.borderColor = UIColor.gray.cgColor
        titleOfPanick.layer.borderWidth = 1
        titleOfPanick.layer.cornerRadius = 9
        titleOfPanick.textColor = .white
        titleOfPanick.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        let description = UILabel()
        description.text = "აღწერა"
        description.textColor = .white
        
        let descriptionOfPanick = UITextField()
        descriptionOfPanick.attributedPlaceholder = NSAttributedString(string: "მაგ: ფიგმამ გამიჭედა და ვინმემ გამომიგზავნეთ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        descriptionOfPanick.backgroundColor = color
        descriptionOfPanick.borderStyle = .roundedRect
        descriptionOfPanick.layer.borderColor = UIColor.gray.cgColor
        descriptionOfPanick.layer.borderWidth = 1
        descriptionOfPanick.layer.cornerRadius = 9
        descriptionOfPanick.textColor = .white
        descriptionOfPanick.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        textFields.addArrangedSubview(title)
        textFields.addArrangedSubview(titleOfPanick)
        textFields.addArrangedSubview(description)
        textFields.addArrangedSubview(descriptionOfPanick)
    }
}

#Preview {
    LastVC()
}
