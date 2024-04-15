//
//  SecondVC.swift
//  17.davaleba
//
//  Created by Data on 14.04.24.
//

import UIKit

class SecondVC: UIViewController {
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: "launchScreanBK")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 100, height: 100), collectionViewLayout: flowLayout)
//        collection.itemSize = CGSize(width: 150, height: 100)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    let buttonForAddCard: UIButton = {
        let color = UIColor(red: 0/255, green: 117/255, blue: 255/255, alpha: 1.0)
        let button = UIButton()
        button.setTitle("ახალი წუწუნ ბარათის დამატება", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackground()
        setaupUI()
        addNextButton()
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
    
    func setaupUI() {
        addCollection()
    }
    
    func addCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 77),
            collectionView.bottomAnchor.constraint(equalTo: buttonForAddCard.topAnchor, constant: -135),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        collectionView.register(CellForProblems.self, forCellWithReuseIdentifier: "CellForProblems")
    }
    
    func addNextButton() {
        view.addSubview(buttonForAddCard)
        NSLayoutConstraint.activate([
            buttonForAddCard.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -104),
            buttonForAddCard.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonForAddCard.widthAnchor.constraint(equalToConstant: 290),
            buttonForAddCard.heightAnchor.constraint(equalToConstant: 48)
        ])
        buttonForAddCard.addAction(UIAction(handler: { [weak self] _ in
            self?.goToLastVC()
        }), for: .touchUpInside)
    }
    
    func goToLastVC() {
        let lastViewControler = LastVC()
        self.navigationController?.pushViewController(lastViewControler, animated: true)
    }
    
    
    let test2 = [
        "erti",
        "orti",
        "sami",
        "otxi"
    ]
}

extension SecondVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        test2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "CellForProblems", for: indexPath) as! CellForProblems
        let current = test2[indexPath.row]
        
        return cells
    }
    
    
}

extension SecondVC: UICollectionViewDelegate {
    
}

#Preview {
    SecondVC()
}
