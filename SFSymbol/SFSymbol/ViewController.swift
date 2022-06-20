import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var symbolImageView: UIImageView! {
        didSet {
            symbolImageView.image = UIImage(systemName: "sparkles")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

