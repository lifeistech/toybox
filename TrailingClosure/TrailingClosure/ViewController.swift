import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateWithTrailingClosure() {
        UIView.animate(withDuration: 1, delay: 0) {
            self.animationView.center.y += 100
        } completion: { completed in
            print(completed)
        }
    }
    
    @IBAction func animateWithoutTrailingClosure() {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.animationView.center.y -= 100
        }, completion: { completed in
            print(completed)
        })
    }
}

