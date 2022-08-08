//
//  ColllectionViewCellDelegate.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/04.
//

import Foundation

protocol CollectionViewCellDelegate: AnyObject {
    func buttonPressed(indexPath: IndexPath)
}
