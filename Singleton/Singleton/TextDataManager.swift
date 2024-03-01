//
//  TextDataModel.swift
//  Singleton
//
//  Created by 保坂篤志 on 2024/02/14.
//

import Foundation

//MARK: ユーザーから入力されたデータを保存する・表示するためにデータを提供する、といった役割を担っています。
//MARK: 例：SegueStartViewControllerで値を保存、TextHistoryTableViewControllerで全て表示
class TextDataManager {
    
    //これがシングルトンと呼ばれるものです。TextDataModel.sharedとすることで、どこからでも同じクラスにアクセスすることができます。
    static let shared = TextDataManager()
    
    //保管しているデータなども、変な操作がされないようにprivateをつけておくと良いです
    private var allHistory = [String]()
    
    var currentInputText: String?
    
    //データを管理するクラスが用意できているので、メソッドを追加すると便利です
    func saveText() {
        if let currentInputText {
            allHistory.append(currentInputText)
        }
    }
    
    func getAllTextHistory() -> [String] {
        return allHistory
    }
}
