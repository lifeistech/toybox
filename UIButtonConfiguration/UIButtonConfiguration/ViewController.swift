import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var editButton: UIButton! {
        didSet {
            //グレーボタンのコンフィグレーションを定義
            var configuration = UIButton.Configuration.gray()
            configuration.title = "編集する"
            let symbolConfiguration = UIImage.SymbolConfiguration(scale: .default)
            configuration.image = UIImage(systemName: "square.and.pencil", withConfiguration: symbolConfiguration)
            configuration.cornerStyle = .capsule
            configuration.imagePlacement = .trailing
            configuration.imagePadding = 8
            //editButtonに反映
            editButton.configuration = configuration
        }
    }
    
    @IBOutlet var searchButton: UIButton! {
        didSet {
            //ボタンのコンフィグレーションを定義
            var configuration = UIButton.Configuration.filled()
            configuration.title = "検索中"
            configuration.imagePlacement = .trailing
            configuration.showsActivityIndicator = true
            configuration.imagePadding = 8
            //searchButtonに反映
            searchButton.configuration = configuration
        }
    }
    
    @IBOutlet var purchaseButton: UIButton! {
        didSet {
            //ボタンのコンフィグレーションを定義
            var configuration = UIButton.Configuration.filled()
            configuration.title = "購入する"
            configuration.subtitle = "1~2週間でお届け"
            configuration.titleAlignment = .center
            configuration.titlePadding = 8
            //purchaseButtonに反映
            purchaseButton.configuration = configuration
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

