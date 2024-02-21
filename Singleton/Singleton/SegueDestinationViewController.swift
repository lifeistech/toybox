//
//  SegueDestinationViewController.swift
//  Singleton
//
//  Created by 保坂篤志 on 2024/02/14.
//

import UIKit

//MARK: 遷移先の画面
class SegueDestinationViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //シングルトンから得られたデータをラベルに表示します
        resultLabel.text = TextDataManager.shared.currentInputText
    }
}
