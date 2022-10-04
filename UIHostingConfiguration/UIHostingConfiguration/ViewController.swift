//
//  ViewController.swift
//  UIHostingConfiguration
//
//  Created by Masakaz Ozaki on 2022/07/26.
//

import SwiftUI
import UIKit

class ViewController: UIViewController {
    //SwiftUIのCellを表示するUICollectionViewを定義
    @IBOutlet var collectionView: UICollectionView! {
        didSet {
            //CollectionViewで使用するセルをregister(_:forCellWithReuseIdentifier:)メソッドで登録
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            //UICollectionViewのdelegateとdataSourceにUIViewControllerをセット
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    //UICollectionViewのCellの数を設定
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    //それぞれのCellに中身を表示
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentConfiguration = UIHostingConfiguration {
            ContentCell(title: "\(indexPath.row)🦄🤯👾", subTitle: "subtitle", bodyText: "Lorem ipsum dolor sit amet, consectetur ")
        }
        return cell
    }
}
