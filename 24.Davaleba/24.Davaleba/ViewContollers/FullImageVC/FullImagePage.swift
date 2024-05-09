//
//  FullImagePage.swift
//  24.Davaleba
//
//  Created by Data on 09.05.24.
//

import UIKit
import NetworkService

class FullImagePage: UIViewController{
    
    var sellectionIndex: Int = 0
    var imageArray: String?
    
    let sellectedImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.isUserInteractionEnabled = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addLayouts()
        
        guard let imageForDetail = URL(string: imageArray!) else {
            return
        }
        sellectedImage.setImage(with: imageForDetail)
    }
    
    func addLayouts() {
        view.addSubview(sellectedImage)
        
        NSLayoutConstraint.activate([
            sellectedImage.topAnchor.constraint(equalTo: view.topAnchor),
            sellectedImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sellectedImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sellectedImage.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}


