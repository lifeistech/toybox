import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var themeColorLabel: UILabel! {
        didSet {
            themeColorLabel.backgroundColor = UIColor(named: "mainColor")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

