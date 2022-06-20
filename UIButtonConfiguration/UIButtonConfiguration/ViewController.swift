import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var editButton: UIButton! {
        didSet {
            var configuration = UIButton.Configuration.gray()
            configuration.title = "編集する"
            configuration.image = UIImage(systemName: "square.and.pencil", withConfiguration: UIImage.SymbolConfiguration(scale: .default))
            configuration.cornerStyle = .capsule
            configuration.imagePlacement = .trailing
            configuration.imagePadding = 8
            editButton.configuration = configuration
        }
    }
    
    @IBOutlet var searchButton: UIButton! {
        didSet {
            var configuration = UIButton.Configuration.filled()
            configuration.title = "検索中"
            configuration.imagePlacement = .trailing
            configuration.showsActivityIndicator = true
            configuration.imagePadding = 8
            searchButton.configuration = configuration
        }
    }
    
    @IBOutlet var purchaseButton: UIButton! {
        didSet {
            var configuration = UIButton.Configuration.filled()
            configuration.title = "購入する"
            configuration.subtitle = "1~2週間でお届け"
            configuration.titleAlignment = .center
            configuration.titlePadding = 8
            purchaseButton.configuration = configuration
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

