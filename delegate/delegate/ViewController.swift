//
//  ViewController.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {
    //UICollectionViewに表示するリストを定義
    let fruitsList: [String] = ["りんご🍎", "ぶどう🍇", "みかん🍊", "いちご🍓", "さくらんぼ🍒"]

    //カスタムセルを使用したUICollectionViewを定義
    @IBOutlet var fruitsCollectionView: UICollectionView! {
        didSet {
            //UICollectionViewのdelegateとdataSourceにUIViewControllerをセット
            fruitsCollectionView.delegate = self
            fruitsCollectionView.dataSource = self
            //CollectionViewで使用するセルをregister(_:forCellWithReuseIdentifier:)メソッドで登録
            fruitsCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        }
    }
    
    //CollectionViewのグリッドレイアウトのサイズを設定
    @IBOutlet var collectionViewFlowLayout: UICollectionViewFlowLayout! {
        didSet {
            collectionViewFlowLayout.estimatedItemSize = CGSize(width: UIScreen.main.bounds.size.width, height: 44)
        }
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    //カスタムセルのxibファイルのIdentifierを紐づけるための定数
    let cellId = "CustomCell"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
