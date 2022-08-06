//
//  ViewController.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {
    
    let fruitsList: [String] = ["りんご🍎", "ぶどう🍇", "みかん🍊", "いちご🍓", "さくらんぼ🍒"]

    @IBOutlet var fruitsCollectionView: UICollectionView! {
        didSet {
            fruitsCollectionView.delegate = self
            fruitsCollectionView.dataSource = self
            fruitsCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CELL_IDENTIFIER)
        }
    }
    
    @IBOutlet var collectionViewFlowLayout: UICollectionViewFlowLayout! {
        didSet {
            collectionViewFlowLayout.estimatedItemSize = CGSize(width: UIScreen.main.bounds.size.width, height: 50)
            
        }
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    let CELL_IDENTIFIER = "CustomCell"
    var selectedCellIndex: IndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}