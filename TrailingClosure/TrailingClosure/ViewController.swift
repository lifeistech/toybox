import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //TrailingClosureを使って記載したアニメーション
    @IBAction func animateWithTrailingClosure() {
        //最初の引数ラベルanimationsを省略することができる
        UIView.animate(withDuration: 1, delay: 0) {
            self.animationView.center.y += 100
        } completion: { completed in
            print(completed)
        }
    }
    
    //Closureを使って記載したアニメーション
    @IBAction func animateWithoutTrailingClosure() {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.animationView.center.y -= 100
        }, completion: { completed in
            print(completed)
        })
    }
}

