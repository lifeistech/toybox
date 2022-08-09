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
    
    var num1: Int = 0
    var num2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkNumberValue()
    }

    @IBAction func switchValueChanged() {
        //スイッチのオンオフによって条件分岐するif文(UISwitch.isOnはBool型なので==trueを省略できる)
        if uiSwitch.isOn {
            switchStatusLabel.text = "スイッチがオンです"
        } else {
            switchStatusLabel.text = "スイッチがオフです"
        }
    }
    
    //num1のカウントボタン
    @IBAction func num1PlusButtonTapped(){
        num1 += 1
        checkNumberValue()
    }
    
    //num2のカウントボタン
    @IBAction func num2PlusButtonTapped(){
        num2 += 1
        checkNumberValue()
    }
    
    func checkNumberValue(){
        //num1とnum2の値が10以上であるか10未満であるかで条件分岐するif文（&&を使って2つの条件文を結んでいる)
        if num1 >= 10 && num2 >= 10 {
            //num1とnum2が両方10以上だった場合
            resultLabel.text = "num1とnum2はどちらも10以上です"
        } else if num1 >= 10 || num2 >= 10 {
            //num1とnum2の片方が10以上だった場合
            resultLabel.text = "num1かnum2のどちらか一方が10以上です"
        } else {
            //num1とnum2が両方10未満だった場合
            resultLabel.text = "num1とnum2はどちらも10未満です"
        }
    }
}
