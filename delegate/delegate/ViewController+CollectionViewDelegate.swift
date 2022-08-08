//
//  ViewController+CollectionViewDelegate.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/04.
//

import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionViewCell
        cell.delegate = self
        cell.index = indexPath
        cell.fruitLabel.text = "\(fruitsList[indexPath.row])"
        
        return cell
    }
}

extension ViewController: CollectionViewCellDelegate {
    func buttonPressed(indexPath: IndexPath) {
        resultLabel.text = "\(fruitsList[indexPath.row])が選択されました"
    }
}
