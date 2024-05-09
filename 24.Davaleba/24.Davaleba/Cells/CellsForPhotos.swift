//
//  CellsForPfotos.swift
//  24.Davaleba
//
//  Created by Data on 08.05.24.
//

import UIKit

final class CellsForPhotos: UICollectionViewCell {
    static let identifier = "CellsForPhotos"
    
    let imageGalley: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        contentView.addSubview(imageGalley)
        
        NSLayoutConstraint.activate([
            imageGalley.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageGalley.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageGalley.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageGalley.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}
