//
//  TextDataModel.swift
//  Singleton
//
//  Created by 保坂篤志 on 2024/02/14.
//

import Foundation

//MARK: SegueStartViewControllerとSegueDestinationViewControllerのデータを管理します
class TextDataModel {
    
    //これがシングルトンと呼ばれるものです。TextDataModel.sharedとすることで、どこからでも同じクラスにアクセスすることができます。
    static let shared = TextDataModel()
    
    //UserDefaultsのKeyなど、何回も用いるStringは、編集できない定数に保管するなどしておくとタイプミスが減り便利です
    private let textHistoryKey = "inputText"
    
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
