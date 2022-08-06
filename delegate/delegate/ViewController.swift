//
//  ViewController.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {
    
    let fruitsList: [String] = ["りんご🍎", "ぶどう🍇", "みかん🍊", "いちご🍓", "さくらんぼ🍒"]

    @IBOutlet weak var fruitsCollectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    @IBOutlet var resultLabel: UILabel!
    
    let CELL_IDENTIFIER = "CustomCell"
    var selectedCellIndex: IndexPath?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruitsCollectionView.delegate = self
        fruitsCollectionView.dataSource = self
        fruitsCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CELL_IDENTIFIER)
        collectionViewFlowLayout.estimatedItemSize = CGSize(width: UIScreen.main.bounds.size.width, height: 50)
    }
}
