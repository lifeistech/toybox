//
//  ViewController.swift
//  if
//
//  Created by Risako Kato on 2022/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var switchStatusLabel: UILabel!
    
    @IBOutlet var uiSwitch: UISwitch! {
        didSet {
            uiSwitch.setOn(false, animated: false)
        }
    }
    
    @IBOutlet var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let num1: Int = 8
        let num2: Int = 24
        
        if num1 >= 10 && num2 >= 10 {
            resultLabel.text = "num1とnum2はどちらも10以上です"
        } else if num1 >= 10 || num2 >= 10 {
            resultLabel.text = "num1かnum2のどちらか一方が10以上です"
        } else {
            resultLabel.text = "num1とnum2はどちらも10未満です"
        }
    }

    @IBAction func switchValueChanged() {
        //関連付けするactionはValue Changed
        if uiSwitch.isOn {
            switchStatusLabel.text = "スイッチがオンです"
        } else {
            switchStatusLabel.text = "スイッチがオフです"
        }
    }
}
