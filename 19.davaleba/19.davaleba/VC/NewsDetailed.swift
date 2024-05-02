//
//  NewsDetailed.swift
//  19.davaleba
//
//  Created by Data on 23.04.24.
//

import UIKit

class NewsDetailed: UIViewController {
    
    var newTitle: String?
    var timeText: String?
    var image: String?
    
    
    
    let detileLabel: UILabel = {
        let detail = UILabel()
        detail.text = "Detile"
        detail.font = UIFont(name: "FiraGO-Regular", size: 24)
        detail.font = UIFont.boldSystemFont(ofSize: 24)
        detail.textColor = .black
        detail.translatesAutoresizingMaskIntoConstraints = false
        return detail
    }()
    
    let imageSet: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
//        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    

    
    let setTime: UILabel = {
        let time = UILabel()
        time.textColor = .black
        time.translatesAutoresizingMaskIntoConstraints = false
        return time
    }()
    
    let textSet: UITextView = {
        let text = UITextView()
        text.backgroundColor = .white
        text.font = UIFont(name: "FiraGO-Regular", size: 16)
        text.font = UIFont.boldSystemFont(ofSize: 16)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        addLayouts()
        
        textSet.text = newTitle
        setTime.text = timeText
        
        guard let imageForDetail = URL(string: image!) else {
            return
        }
        imageSet.setImage(with: imageForDetail)
    }
    

    
    func addLayouts(){
        view.addSubview(detileLabel)
        view.addSubview(imageSet)
        view.addSubview(setTime)
        view.addSubview(textSet)
        
        NSLayoutConstraint.activate([
            detileLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            detileLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
//            detileLabel.widthAnchor.constraint(equalToConstant: 80),
            detileLabel.heightAnchor.constraint(equalToConstant: 31),
            
            imageSet.topAnchor.constraint(equalTo: detileLabel.bottomAnchor, constant: 4),
            imageSet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            imageSet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            imageSet.heightAnchor.constraint(equalToConstant: 190),
            
            setTime.topAnchor.constraint(equalTo: imageSet.bottomAnchor, constant: 13),
            setTime.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            setTime.heightAnchor.constraint(equalToConstant: 19),
            
//            textSet.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textSet.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            textSet.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            textSet.topAnchor.constraint(equalTo: imageSet.bottomAnchor, constant: 58),
            textSet.heightAnchor.constraint(equalToConstant: 287)
            
        ])
    }
    
}
