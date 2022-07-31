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
            for transportation in Transportation.allCases {
                menuItems.append(UIAction(title: transportation.title, image: transportation.image) { _ in
                    self.transportationLabel.text = "\(transportation.title)が選択されました"
                })
            }
            menuButton.menu = UIMenu(title: "画像を選択", image: nil, children: menuItems)
            menuButton.showsMenuAsPrimaryAction = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...10{
            print(i)
        }
        
        let numbers = ["a", "b", "c", "d", "e"]
        numbers.forEach {
            print($0)
        }
    }

}
