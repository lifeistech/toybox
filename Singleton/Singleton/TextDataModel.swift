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
    
    var inputText: String?
    
    //データを管理するクラスが用意できているので、メソッドを追加すると便利です
    func doubleText() -> String {
        return (inputText ?? "") + (inputText ?? "")
    }
    
    func saveText() {
        UserDefaults.standard.setValue(inputText, forKey: "inputText")
    }
}
