import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var hiraginoLabel: UILabel! {
        didSet {
            hiraginoLabel.font = UIFont(name: "HiraginoSans-W3", size: 20)
        }
    }
    
    @IBOutlet var systemBoldLabel: UILabel! {
        didSet {
            systemBoldLabel.font = .systemFont(ofSize: 20, weight: .bold)
        }
    }
    
    @IBOutlet var systemTitleLabel: UILabel! {
        didSet {
            systemTitleLabel.font = .preferredFont(forTextStyle: .largeTitle)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

