import UIKit
//import Kingfisherをする
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView! {
        didSet {
            //UIImageViewにURLからキャッシュした画像を表示
            imageView.kf.setImage(with: URL(string: "https://life-is-tech.com/index/img/img-sitenav-school2020-pc.jpg")!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
