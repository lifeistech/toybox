//
//  CollectionViewCell.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/05.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    //カスタムセルのLabelとButton
    @IBOutlet var fruitLabel: UILabel!
    @IBOutlet var fruitButton: UIButton! {
        didSet {
            fruitButton.layer.masksToBounds = true
            fruitButton.layer.cornerRadius = 8
        }
    }
    
    //CollectionViewCellDelegateのインスタンスを設定
    var delegate: CollectionViewCellDelegate?
    
    var index: IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //ここで処理を任せる
    @IBAction func buttonPressed(_ sender: Any) {
        //デリゲートメソッドbuttonPressedを実行
        delegate?.buttonPressed(indexPath: index!)
    }
}
