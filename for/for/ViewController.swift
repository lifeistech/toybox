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
                menuItems.append(UIAction(title: transportation.rawValue) { _ in
                    self.transportationLabel.text = "\(transportation.rawValue)が選択されました"
                })
            }
            menuButton.menu = UIMenu(title: "選択", image: nil, children: menuItems)
            menuButton.showsMenuAsPrimaryAction = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...10{
            print("i >> \(i)")
        }
        
        let numbers = ["a", "b", "c", "d", "e"]
        numbers.forEach {
            print("i >> \($0)")
        }
    }

}
