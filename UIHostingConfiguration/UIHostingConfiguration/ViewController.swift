//
//  ViewController.swift
//  UIHostingConfiguration
//
//  Created by Masakaz Ozaki on 2022/07/26.
//

import SwiftUI
import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView! {
        didSet {
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentConfiguration = UIHostingConfiguration {
            ContentCell(title: "\(indexPath.row)🦄🦄🦄🦄🦄🦄")
        }
        return cell
    }
}
