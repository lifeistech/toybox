//
//  CollectionViewCell.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/05.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var fruitButton: UIButton!
    
    var delegate: CollectionViewCellDelegate?

    var cellDone: (() -> Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
        fruitButton.layer.masksToBounds = true
        fruitButton.layer.cornerRadius = 5
    }

    @IBAction func buttonTapAction(_ sender: Any) {
        cellDone?()
        delegate?.buttonTapAction()
    }
}
