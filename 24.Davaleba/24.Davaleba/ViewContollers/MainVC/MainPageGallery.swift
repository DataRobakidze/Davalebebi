//
//  MainPageGallery.swift
//  24.Davaleba
//
//  Created by Data on 08.05.24.
//

import UIKit
import NetworkService

class MainPageGallery: UIViewController {
    
    private let collectionViewOfGallery: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .systemBackground
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.register(CellsForPhotos.self, forCellWithReuseIdentifier: CellsForPhotos.identifier)
        return collection
    }()
    
    private let headerTitle: UILabel = {
        let title = UILabel()
        title.textAlignment = .center
        title.text = "გალერეა"
        title.font = UIFont.systemFont(ofSize: 32)
        title.textColor = .systemBlue
        return title
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        addTitle()
        extensions()
        setupLayouts()
        getPhotosForGallery()
    }
    
    private func addTitle() {
        navigationItem.titleView = headerTitle
    }
    
    
    func setupLayouts() {
        view.addSubview(collectionViewOfGallery)
        
        NSLayoutConstraint.activate([
            collectionViewOfGallery.topAnchor.constraint(equalTo: view.topAnchor),
            collectionViewOfGallery.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionViewOfGallery.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionViewOfGallery.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
    func extensions() {
        collectionViewOfGallery.dataSource = self
        collectionViewOfGallery.delegate = self
    }
    
    
    func getPhotosForGallery() {
        NetworkService().getData(urlString: link) { (result: Result<[Photo], Error>) in
            switch result {
            case .success(let receivedPhotos):
                photos = receivedPhotos
                DispatchQueue.main.async {
                    self.collectionViewOfGallery.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}


