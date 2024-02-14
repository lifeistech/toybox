//
//  SegueStartViewController.swift
//  Singleton
//
//  Created by 保坂篤志 on 2024/02/14.
//

import UIKit

//MARK: 遷移元の画面
class SegueStartViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goNextView(_ sender: Any) {
        let inputText = inputTextField.text
        TextDataModel.shared.inputText = inputText
        
        performSegue(withIdentifier: "toDestinationView", sender: nil)
    }
}
