//
//  ViewController.swift
//  for
//
//  Created by Risako Kato on 2022/07/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var transportationLabel: UILabel!
    @IBOutlet var menuButton: UIButton! {
        didSet {
            var menuItems = [UIAction]()
            //UIMenuに要素を追加 配列の数だけ繰り返すfor文
            for transportation in Transportation.allCases {
                menuItems.append(UIAction(title: transportation.rawValue) {[weak self] _ in
                    self?.transportationLabel.text = "\(transportation.rawValue)が選択されました"
                })
            }
            menuButton.menu = UIMenu(title: "選択", image: nil, children: menuItems)
            menuButton.showsMenuAsPrimaryAction = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //繰り返しの回数を10回繰り返しprintするfor-in文
        for i in 1...10 {
            print("print -> \(i)")
        }
        
        //alphabets配列の中身をprintするforEach文
        let alphabets = ["a", "b", "c", "d", "e"]
        alphabets.forEach {
            print("print -> \($0)")
        }
    }
}
