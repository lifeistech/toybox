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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapSwitch() {
        //関連付けするactionはValue Changed
        if uiSwitch.isOn {
            switchStatusLabel.text = "スイッチがオンです"
        } else {
            switchStatusLabel.text = "スイッチがオフです"
        }
    }

}

