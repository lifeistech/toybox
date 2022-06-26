import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var themeColorLabel: UILabel! {
        didSet {
            themeColorLabel.backgroundColor = UIColor(named: "themeColor")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

