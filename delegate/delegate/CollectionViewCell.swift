//
//  CollectionViewCell.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/05.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var fruitLabel: UILabel!
    @IBOutlet var fruitButton: UIButton! {
        didSet {
            fruitButton.layer.masksToBounds = true
            fruitButton.layer.cornerRadius = 8
        }
    }
    
    var delegate: CollectionViewCellDelegate?
    
    var index: Int = 0

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        delegate?.buttonPressed(indexPath: index)
    }
}
