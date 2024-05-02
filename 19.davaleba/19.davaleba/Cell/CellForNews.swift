//
//  CellForNews.swift
//  19.davaleba
//
//  Created by Data on 23.04.24.
//

import UIKit

class CellForNews: UITableViewCell {
    
    let labelForTime: UILabel = {
        let time = UILabel()
        time.font = UIFont(name: "FiraGO-Regular", size: 12)
        time.textColor = .white
        time.font = time.font.withSize(12)
        time.textAlignment = .center
        time.translatesAutoresizingMaskIntoConstraints = false
        return time
    }()
    
    let coverText: UILabel = {
        let textLabel = UILabel()
        textLabel.font = UIFont(name: "FiraGO-Regular", size: 14)
        textLabel.textColor = .white
        textLabel.numberOfLines = 3
        textLabel.textAlignment = .center
        textLabel.font = textLabel.font.withSize(12)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    let cellBackgroungImage: UIImageView = {
        let backImage = UIImageView()
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
        addSubview(labelForTime)
        addSubview(cellBackgroungImage)
        sendSubviewToBack(cellBackgroungImage)
        
        NSLayoutConstraint.activate([
            cellBackgroungImage.topAnchor.constraint(equalTo: topAnchor),
            cellBackgroungImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            cellBackgroungImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            cellBackgroungImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelForTime.heightAnchor.constraint(equalToConstant: 27),
            labelForTime.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelForTime.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            
            coverText.heightAnchor.constraint(equalToConstant: 38),
            coverText.widthAnchor.constraint(equalToConstant: 303),
            coverText.centerYAnchor.constraint(equalTo: centerYAnchor),
            coverText.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    public func configure(time: String, title: String, image: String) {
        labelForTime.text = time
        coverText.text = title
        guard let image = URL(string: image) else {
            return
        }
        cellBackgroungImage.setImage(with: image)
    }
}
