//
//  ViewController.swift
//  Generics
//
//  Created by クワシマ・ユウキ on 2022/08/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var count1: Int = 0
    var count2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(count1) + "," + String(count2)
        UIView.animate(withDuration: 1.0) {
            //addValueToTwoElementメソッドの引数aとbはinout(参照渡し)で定義しているため、変数の前に&をつける必要がある
            self.addValueToTwoElement(&self.label.layer.position.y, &self.label.transform.tx, 100)
        } completion: { _ in
            //addValueToTwoElementメソッドの引数aとbはinout(参照渡し)で定義しているため、変数の前に&をつける必要がある
            self.addValueToTwoElement(&self.count1, &self.count2, 100)
            self.label.text = String(self.count1) + "," + String(self.count2)
        }
    }
    
    func addValueToTwoElement<T: AdditiveArithmetic>(_ a: inout T, _ b: inout T, _ value: T) {
        a += value
        b += value
    }
}
