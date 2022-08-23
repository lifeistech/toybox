//
//  ColllectionViewCellDelegate.swift
//  delegate
//
//  Created by Risako Kato on 2022/08/04.
//

import Foundation

//protocolで任せるデリゲートメソッドの定義(ここでは定義のみで処理の実装は行わない)
protocol CollectionViewCellDelegate: AnyObject {
    func buttonPressed(indexPath: IndexPath)
}
