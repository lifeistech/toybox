import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.kf.setImage(with: URL(string: "https://life-is-tech.com/index/img/img-sitenav-school2020-pc.jpg")!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
