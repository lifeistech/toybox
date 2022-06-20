import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var symbolImageView: UIImageView! {
        didSet {
            symbolImageView.image = UIImage(systemName: "sparkles")
        }
    }
    
    @IBOutlet var symbolButton: UIButton! {
        didSet {
            symbolButton.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
            symbolButton.setTitle("共有する", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

