import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var weatherImageView: UIImageView!
    @IBOutlet var menuButton: UIButton! {
        didSet {
            let titles = ["晴れ", "曇り", "雨"]
            let images = [UIImage(systemName: "sun.max"), UIImage(systemName: "cloud"), UIImage(systemName: "cloud.rain")]
            var menuItems = [UIAction]()
            for i in 0..<titles.count {
                menuItems.append(UIAction(title: titles[i], image: images[i], handler: { _ in
                    self.weatherImageView.image = images[i]
                }))
            }
            menuButton.menu = UIMenu(title: "画像を選択", image: nil, children: menuItems)
            menuButton.showsMenuAsPrimaryAction = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

