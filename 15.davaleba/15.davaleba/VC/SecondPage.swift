//
//  SecondPage.swift
//  15.davaleba
//
//  Created by Data on 10.04.24.
//

import UIKit

class SecondPage: UIViewController {
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: "Image")
        let imageView = UIImageView(image: image)
        
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let zodiaco: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let nameOfzodiac: UILabel = {
        let zodic = UILabel()
        
        zodic.textColor = .white
        zodic.font = UIFont.systemFont(ofSize: 24)
        zodic.translatesAutoresizingMaskIntoConstraints = false
        
        return zodic
    }()
    
    let labelForText: UITextView = {
        let text = UITextView()
        
        text.textColor = .gray
        text.backgroundColor = .clear
        text.font = UIFont.systemFont(ofSize: 16)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    let mainButton: UIButton = {
        let button = UIButton()
        let color = UIColor(red: CGFloat(80)/255.0,
                            green: CGFloat(0)/255.0,
                            blue: CGFloat(182)/255.0,
                            alpha: 1.0)
        
        button.setTitle("პოლარული ნიშანი", for: .normal)
        button.layer.cornerRadius = 12
        button.backgroundColor = color
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        background()
        testZodiaco()
        zodiacTitle()
        infoOfZodic()
        bottomButton()
    }
    
    func background() {
        view.addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

    func testZodiaco() {
        view.addSubview(zodiaco)
        zodiaco.heightAnchor.constraint(equalToConstant: 156).isActive = true
        zodiaco.widthAnchor.constraint(equalToConstant: 156).isActive = true
        zodiaco.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        zodiaco.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 109).isActive = true
        zodiaco.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -110).isActive = true
    }
    
    func zodiacTitle() {
        view.addSubview(nameOfzodiac)
        nameOfzodiac.topAnchor.constraint(equalTo: view.topAnchor, constant: 209).isActive = true
        nameOfzodiac.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func infoOfZodic() {
        view.addSubview(labelForText)
        labelForText.heightAnchor.constraint(equalToConstant: 480).isActive = true
        labelForText.topAnchor.constraint(equalTo: nameOfzodiac.bottomAnchor, constant: 30).isActive = true
        labelForText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        labelForText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        
    }
    
    func bottomButton() {
        view.addSubview(mainButton)
        mainButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        mainButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        mainButton.addTarget(self, action: #selector(mesamezegadasvla), for: .touchUpInside)
    }
    @objc func mesamezegadasvla() {
        let thirdVc = ThirdPage()
        
        if nameOfzodiac.text == "ვერძი" {
            thirdVc.nameOfzodiac.text = ariesVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: ariesVariable.polarIcon)
            
        } else if nameOfzodiac.text == "კურო" {
            thirdVc.nameOfzodiac.text = taurusVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: taurusVariable.polarIcon)
            
        } else if nameOfzodiac.text == "ტყუპები" {
            thirdVc.nameOfzodiac.text = geminiVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: geminiVariable.polarIcon)
            
        } else if nameOfzodiac.text == "კირჩხიბი" {
            thirdVc.nameOfzodiac.text = cancerVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: cancerVariable.polarIcon)
            
        } else if nameOfzodiac.text == "ლომი" {
            thirdVc.nameOfzodiac.text = leoVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: leoVariable.polarIcon)
            
        } else if nameOfzodiac.text == "ქალწული" {
            thirdVc.nameOfzodiac.text = virgoVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: virgoVariable.polarIcon)
            
        } else if nameOfzodiac.text == "სასწორი" {
            thirdVc.nameOfzodiac.text = libraVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: libraVariable.polarIcon)
            
        } else if nameOfzodiac.text == "მორიელი" {
            thirdVc.nameOfzodiac.text = scorpioVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: scorpioVariable.polarIcon)
            
        } else if nameOfzodiac.text == "მშვილდოსანი" {
            thirdVc.nameOfzodiac.text = sagittariusVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: sagittariusVariable.polarIcon)
            
        } else if nameOfzodiac.text == "თხის რქა" {
            thirdVc.nameOfzodiac.text = capricornVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: capricornVariable.polarIcon)
            
        } else if nameOfzodiac.text == "თევზები" {
            thirdVc.nameOfzodiac.text = piscesVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: piscesVariable.polarIcon)
            
        } else if nameOfzodiac.text == "მერწყული" {
            thirdVc.nameOfzodiac.text = aquariusVariable.polar
            thirdVc.zodiacoimage.image = UIImage(named: aquariusVariable.polarIcon)
            
        } else {
            thirdVc.nameOfzodiac.text = "პოლარული ზოდიაქო არ მოიძებნა"
        }
        self.navigationController?.pushViewController(thirdVc, animated: true)
    }
}

#Preview {
    SecondPage()
}
