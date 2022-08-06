//
//  CollecitonViewExtension.swift
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_IDENTIFIER, for: indexPath) as! CollectionViewCell
        cell.delegate = self
        cell.cellDone = { [weak self] in
            self?.selectedCellIndex = indexPath
        }
        cell.fruitLabel.text = "\(fruitsList[indexPath.row])"
        
        return cell
    }
}

extension ViewController: CollectionViewCellDelegate {
    func buttonPressed() {
        if let selectedCell = selectedCellIndex {
            resultLabel.text = "\(fruitsList[selectedCell.row])が選択されました"
        }
    }
}