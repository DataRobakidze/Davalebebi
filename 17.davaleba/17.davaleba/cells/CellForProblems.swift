//
//  CellForProblems.swift
//  17.davaleba
//
//  Created by Data on 15.04.24.
//

import UIKit

class CellForProblems: UICollectionViewCell {
    let test: UILabel = {
        let label = UILabel()
//        label.text = "testireba"
        label.translatesAutoresizingMaskIntoConstraints = false
        return  label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addTest()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addTest() {
        addSubview(test)
        
        NSLayoutConstraint.activate([
            test.centerXAnchor.constraint(equalTo: centerXAnchor),
            test.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
