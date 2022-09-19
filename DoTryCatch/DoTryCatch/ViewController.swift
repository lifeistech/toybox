//
//  ViewController.swift
//  DoTryCatch
//
//  Created by クワシマ・ユウキ on 2022/09/19.
//

import UIKit

enum ColorError: Error {
    case tooLarge
    case negativeNumber
}

class ViewController: UIViewController {
    var randomNumber: CGFloat = 0.5
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func setColor(r: CGFloat, g: CGFloat = 1.0, b: CGFloat = 1.0) throws {
        guard r <= 1.0 else {
            throw ColorError.tooLarge
        }
        guard r >= 0.0 else {
            throw ColorError.negativeNumber
        }
        self.view.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    @IBAction func setFromButton(_ sender: UIButton) {
        do {
            try setColor(r: randomNumber)
        } catch ColorError.tooLarge {
            let alert = UIAlertController(title: "色を作れません", message: "数字が大きすぎます", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { action in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        } catch ColorError.negativeNumber {
            let alert = UIAlertController(title: "色を作れません", message: "正の数を使用してください", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { action in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        } catch {
            let alert = UIAlertController(title: "色を作れません", message: "謎のエラーです", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { action in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        randomNumber = CGFloat.random(in: -0.5..<1.5)
        sender.setTitle("r = " + String(format: "%.2f", randomNumber), for: .normal)
    }
}

