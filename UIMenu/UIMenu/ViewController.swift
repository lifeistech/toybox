import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var weatherImageView: UIImageView!
    @IBOutlet var menuButton: UIButton! {
        didSet {
            //メニューの要素を追加
            var menuItems = [UIAction]()
            //選択によって画像を変更
            for weather in Weather.allCases {
                menuItems.append(UIAction(title: weather.title, image: weather.image) { _ in
                    self.weatherImageView.image = weather.image
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

