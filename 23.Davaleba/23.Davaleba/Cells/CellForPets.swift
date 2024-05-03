//
//  CellForPets.swift
//  23.Davaleba
//
//  Created by Data on 03.05.24.
//

import UIKit

class CellForPets: UITableViewCell {
    
    let coverText: UILabel = {
        let textLabel = UILabel()
        textLabel.textColor = .white
        textLabel.numberOfLines = 3
        textLabel.textAlignment = .center
        textLabel.font = UIFont.boldSystemFont(ofSize: 16)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    let cellBackgroungImage: UIImageView = {
        let backImage = UIImageView()
        backImage.image = UIImage(named: "Image")
        backImage.layer.cornerRadius = 15
        backImage.clipsToBounds = true
        backImage.contentMode = .scaleAspectFill
        backImage.translatesAutoresizingMaskIntoConstraints = false
        return backImage
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        contentView.layer.cornerRadius = 15
        
        addLayouts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addLayouts() {
        addSubview(coverText)
        addSubview(cellBackgroungImage)
        sendSubviewToBack(cellBackgroungImage)
        
        NSLayoutConstraint.activate([
            cellBackgroungImage.topAnchor.constraint(equalTo: topAnchor),
            cellBackgroungImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            cellBackgroungImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            cellBackgroungImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            coverText.heightAnchor.constraint(equalToConstant: 38),
            coverText.widthAnchor.constraint(equalToConstant: 303),
            coverText.centerYAnchor.constraint(equalTo: centerYAnchor),
            coverText.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    
    public func configure(textOfFacts: String) {
        coverText.text = textOfFacts
    }
}
