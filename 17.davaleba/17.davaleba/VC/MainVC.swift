//
//  MainVC.swift
//  17.davaleba
//
//  Created by Data on 14.04.24.
//

import UIKit

class MainVC: UIViewController {
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: "background")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let mainText: UITextView = {
        let text = UITextView()
        text.text = "შედი\nაპლიკაციაში\nდა იწუწუნე რამდენიც გინდა"
        text.textColor = .white
        text.backgroundColor = .clear
        text.font = UIFont.systemFont(ofSize: 30)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let butoonForNextPage: UIButton = {
        let color = UIColor(red: 0/255, green: 117/255, blue: 255/255, alpha: 1.0)
        let button = UIButton()
        button.setTitle("დაწყება", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackground()
        addMainText()
        addButton()
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
    
    func addMainText() {
        view.addSubview(mainText)
        NSLayoutConstraint.activate([
            mainText.topAnchor.constraint(equalTo: view.topAnchor, constant: 382),
            mainText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -238),
            mainText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21),
            mainText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -91)
        ])
    }
    
    func addButton() {
        view.addSubview(butoonForNextPage)
        NSLayoutConstraint.activate([
            butoonForNextPage.topAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 90),
            butoonForNextPage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 222),
            butoonForNextPage.heightAnchor.constraint(equalToConstant: 48),
            butoonForNextPage.widthAnchor.constraint(equalToConstant: 123)
        ])
        butoonForNextPage.addAction(UIAction(handler: { [weak self] _ in
            self?.goToSecondVC()
        }), for: .touchUpInside)
    }
    
    func goToSecondVC() {
        let SecondViewControler = SecondVC()
        self.navigationController?.pushViewController(SecondViewControler, animated: true)
    }
}

#Preview {
    MainVC()
}
