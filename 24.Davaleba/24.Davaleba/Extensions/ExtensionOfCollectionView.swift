//
//  Extension.swift
//  24.Davaleba
//
//  Created by Data on 09.05.24.
//

import UIKit

extension MainPageGallery: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellsForPhotos.identifier, for: indexPath) as! CellsForPhotos
        let photo = photos[indexPath.item]
        cell.imageGalley.setImage(with: URL(string: photo.urls.regular)!)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = FullImagePage()
        let photoUrl = photos[indexPath.item]
        
        vc.sellectionIndex = indexPath.row
        vc.imageArray = photoUrl.urls.regular
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}

extension MainPageGallery: UICollectionViewDelegate {
    
}

 
extension MainPageGallery: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let Width: CGFloat = collectionView.frame.width/3 - 1

        return CGSize(width: Width, height: Width)
    }
}
