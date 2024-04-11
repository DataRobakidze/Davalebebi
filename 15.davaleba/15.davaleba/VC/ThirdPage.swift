//
//  ThirdPage.swift
//  15.davaleba
//
//  Created by Data on 10.04.24.
//

import UIKit

class ThirdPage: UIViewController {

    let backgroundImage: UIImageView = {
        let image = UIImage(named: "Image")
        let imageView = UIImageView(image: image)
        
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let zodiacoimage: UIImageView = {
//        let image = UIImage(named: "sagittarius")
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let nameOfzodiac: UILabel = {
        let zodic = UILabel()
        
        zodic.text = "მშვილდოსანი"
        zodic.textColor = .white
        zodic.font = UIFont.systemFont(ofSize: 24)
        zodic.translatesAutoresizingMaskIntoConstraints = false
        
        return zodic
    }()
    
    let redButton: UIButton = {
        let button = UIButton()
        let color = UIColor(red: CGFloat(182)/255.0,
                            green: CGFloat(22)/255.0,
                            blue: CGFloat(0)/255.0,
                            alpha: 1.0)
        
        button.setTitle("წითელი", for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = color
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let blueButton: UIButton = {
        let button = UIButton()
        let color = UIColor(red: CGFloat(80)/255.0,
                            green: CGFloat(0)/255.0,
                            blue: CGFloat(182)/255.0,
                            alpha: 1.0)
        
        button.setTitle("ლურჯი", for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = color
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background()
        polarZodiaco()
        zodiacTitle()
        redButtonAdd()
        blueButtonAdd()
    }
    
    func background() {
        view.addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    func polarZodiaco() {
        view.addSubview(zodiacoimage)
        zodiacoimage.heightAnchor.constraint(equalToConstant: 165).isActive = true
        zodiacoimage.widthAnchor.constraint(equalToConstant: 165).isActive = true
        zodiacoimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 309).isActive = true
        zodiacoimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 105).isActive = true
        zodiacoimage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -105).isActive = true
    }
    
    func zodiacTitle() {
        view.addSubview(nameOfzodiac)
        nameOfzodiac.topAnchor.constraint(equalTo: view.topAnchor, constant: 469).isActive = true
        nameOfzodiac.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func redButtonAdd() {
        view.addSubview(redButton)
        redButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        redButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        redButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        redButton.topAnchor.constraint(equalTo: nameOfzodiac.bottomAnchor, constant: 135).isActive = true
    }
    
    func blueButtonAdd() {
        view.addSubview(blueButton)
        blueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        blueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        blueButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        blueButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 32).isActive = true
    }
}

#Preview {
    ThirdPage()
}
