import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var hourImageView: UIImageView!
    @IBOutlet var menuButton: UIButton! {
        didSet {
            //メニューの要素を追加
            var menuItems = [UIAction]()
            //選択によって画像を変更
            for hour in Hours.allCases {
                menuItems.append(UIAction(title: hour.title, image: hour.image) {[weak self] _ in
                    self?.hourImageView.image = hour.image
                    self?.hourImageView.tintColor = .systemPink
                })
            }
            menuButton.menu = UIMenu(title: "画像を選択", image: nil, children: menuItems)
            menuButton.showsMenuAsPrimaryAction = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
