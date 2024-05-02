//
//  Image.swift
//  19.davaleba
//
//  Created by Data on 23.04.24.
//

import UIKit

//extension UIImageView {
//    func addImage(from url: URL) {
//        URLSession.shared.dataTask(with: url) { [weak self] data, request, error in
//            guard let data = data, error == nil, let image = UIImage(data: data) else { return }
//            
//            DispatchQueue.main.sync {
//                self?.image = image
//            }
//        }.resume()
//    }
//}


extension UIImageView {
    func setImage(with url: URL, contentMode mode: ContentMode = .scaleAspectFill) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard
                let data = data, error == nil,
                let image = UIImage(data: data)
            else {
                return
            }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
}
