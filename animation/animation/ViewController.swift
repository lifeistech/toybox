import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goDown() {
        //y軸の座標を100下に動かすアニメーション
        UIView.animate(withDuration: 1, delay: 0) {
            self.animationView.center.y += 100
        }
    }
    
    @IBAction func goUpWithEaseOut() {
        //y軸の座標を100上に動かすアニメーション。イーズアウトを適応しています。
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut) {
            self.animationView.center.y -= 100
        }
    }
    
    @IBAction func rotate() {
        //回転するアニメーション。回転角の単位はラジアンなので、この場合はπ=180°(その他の例: π/2=90°, 2π=360°)
        UIView.animate(withDuration: 1, delay: 0) {
            self.animationView.transform = CGAffineTransform(rotationAngle: .pi)
        }
    }
    
    @IBAction func blink() {
        //透過度を変更して点滅するアニメーション
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat]) {
            self.animationView.alpha = 0
        }
    }
}

