import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goDown() {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.animationView.center.y += 50
        }, completion: nil)
    }
    
    @IBAction func rotate() {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.animationView.transform = CGAffineTransform(rotationAngle: .pi)
        }, completion: nil)
    }
    
    @IBAction func blink() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat], animations: {
            self.animationView.alpha = 0
        }, completion: nil)
    }
}

