//
//  ViewController+CollectionViewDelegate.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/04.
//

import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    //UICollectionViewのセクションの数を設定
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //UICollectionViewのセルの数を設定
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    //それぞれのセルに定義したリストの中身を表示
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionViewCell
        cell.delegate = self
        cell.index = indexPath
        cell.fruitLabel.text = "\(fruitsList[indexPath.row])"
        
        return cell
    }
}

//処理を任されたクラス
extension ViewController: CollectionViewCellDelegate {
    //buttonPressedが呼ばれたときに行われる処理
    func buttonPressed(indexPath: IndexPath) {
        resultLabel.text = "\(fruitsList[indexPath.row])が選択されました"
    }
}
