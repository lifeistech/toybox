import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goDown() {
        UIView.animate(withDuration: 1, delay: 0) {
            self.animationView.center.y += 100
        }
    }
    
    @IBAction func goUpWithEaseOut() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut) {
            self.animationView.center.y -= 100
        }
    }
    
    @IBAction func rotate() {
        UIView.animate(withDuration: 1, delay: 0) {
            self.animationView.transform = CGAffineTransform(rotationAngle: .pi)
        }
    }
    
    @IBAction func blink() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat]) {
            self.animationView.alpha = 0
        }
    }
}

